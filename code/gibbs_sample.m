function [s d scores] = gibbs_sample(a,v,n,path,init)
% a(m,b) - spectrogram of the song at frequency m, beat b
% v(m,k) - loudness of instrument k at frequency m
%
% n    - # of samples
% path - load saved data, or save new data to this path
% init - initialization of s (random if empty)
%
% s(k,b) - score of instrument k at beat b
% d(k,b) - loudness of instrument k at beat b (if s(k,b) is 1)

d_h = 2; % d ~ Gamma(d_h,d_h)

k = size(v,2); % the number of distinct instruments and notes
b = size(a,2);

params = getMRFparams();

%% Either load existing sampler state, or initialize S and D randomly
if exist(path,'file')
    load path
    s_ind = reshape(find(s),5,b); % the linear index of all elements of s that are 1.  more compact than s, but reconstruction is faster using s.
else
    if nargin < 5
        s = zeros(k,b);
        s_ind = ceil(rand(5,b)*k/5) + (k/5*(0:4))'*ones(1,b) + ones(5,1)*(k*((1:b)-1)) ;
        s(s_ind) = 1;
    else
        s = init;
        s_ind = reshape(find(init),5,b);
    end
    d = gamrnd(d_h,1/d_h,[k b]);
    scores = score(a,s,v,d,d_h,params);
end

%% Run n sweeps of the Gibbs sampler
sumv = diag(sum(v)); % used for calculating updates to D
for t = 1:n
    % Sample S
    prob = zeros(k/5,1);
    for i = 1:b
        for j = 1:5
            for q = 1:k/5
                if mod(s_ind(i,j)-1,k/5)+1 == q
                    prob(q) = 1;
                else
                    prob(q) = exp(logprobSdiff(s,params,[s_ind(i,j), (i-1)*k + (j-1)*k/5 + q]));
                end
            end
            samp = find(prob > rand*sum(prob),1);
            s(s_ind(i,j)) = 0; % Note: the order matters here.  If the new and old values are the same, the reverse order would leave everything zero.
            s((i-1)*k + (j-1)*k/5 + samp) = 1;
            s_ind(i,j) = (i-1)*k + (j-1)*k/5 + samp;
        end
    end
   
    % Sample D
    d_h_post = sumv*s; % the term added to the rate parameter for conditional sampling of D
    d(s==0) = gamrnd(d_h,1/d_h,(k-5)*b,1); % only need to sample once per Gibbs sweep
    for i = 1:10
        z = sample_z(a,s_ind,v,d); % This is BY FAR the slowest part!!!!!!
        d(s_ind) = gamrnd(d_h + z, 1./(d_h + d_h_post(s_ind)));
    end
    
    % Evaluate joint log likelihood
    scores = [scores score(a,s,v,d,d_h,params)];
end

%% Save the output of n sweeps of the sampler, including the joint log likelihood
save path s d scores

function z = sample_z(a,s_ind,v,d)

k = size(v,2);
f = size(a,1);
b = size(a,2);

%% Build array of multinomial probabilities
prob = zeros(f,b,5);
for i = 1:5
    for j = 1:k/5
        j_on = (mod(s_ind(i,:)-1,k/5) == j - 1); % the beats in which the i'th instrument is playing the j'th note.
        idx = (i-1)*k/5 + j; % the row index for instrument i/note j
        prob(:,j_on,i) = v(:,idx)*d(idx,j_on);
    end
end
normprob = prob./repmat(sum(prob,3),[1 1 5]); % there is probably a faster way to do this than with repmat and squeeze &c.

%% Sample from those probabilities
z = zeros(f,b,5);
for i = 1:b % <-- Most of the time suck is in this loop
    z(:,i,:) = mnrnd(floor(a(:,i)),squeeze(normprob(:,i,:)));
end
z = squeeze(sum(z))';

function score = logprobA(a,s,v,d)

h = v*(s.*d);
score = sum(a(:) .* log(h(:) + 1e-16) - h(:)); % log poisson likelihood, with a small factor to prevent log(0)

function score = logprobD(d,d_h)

score = (d_h-1)*sum(log(d(:))) - d_h*(sum(d(:))); % log gamma likelihood

function logprob = score(a,s,v,d,d_hyp,params)

logprob = logprobA(a,s,v,d) + logprobD(d,d_hyp) + logprobS(s,params);