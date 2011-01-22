function [s,d] = sample_simple_model(a,v,nBurn,nSamp,nInter,init)
% a(m,b) - spectrogram of the song at frequency m, beat b
% v(m,k) - loudness of instrument k at frequency m
%
% nBurn  - # of burn-in samples
% nSamp  - # of post-burn-in samples
% nInter - interval between saved samples
%
% s(k,b) - score of instrument k at beat b
% d(k,b) - loudness of instrument k at beat b (if s(k,b) is 1)

d_hyp = 2; % d ~ Gamma(d_hyp,d_hyp)

k = size(v,2); % the number of distinct instruments and notes
n = size(a,2);

e = 1e-16*ones(1,size(a,2)); % for now, either sample or integrate out later

params = getMRFparams(n);

if nargin < 6
    s = rand(k,n) < 0.1;
else
    s = init;
end
d = ones(size(s));
% d = gamrnd(d_hyp,1/d_hyp,[k n]);
% 
% for i = 1:20
%     z = sample_z(a,e,s,v,d);
%     d = sample_d(z,s,v,d_hyp);
%     disp(['Initializing D: ' num2str(i)])
% end
% curr_score = score(a,s,v,d,d_hyp);
% scores = curr_score;
scores = score(a,s,v,d,d_hyp,params);

for t = 1:(nBurn+nSamp*nInter)
    for i = 1:numel(s)
        if mod(i,k/5)
            [s d] = sample_s(a,e,s,v,d,d_hyp,[i i-mod(i,k/5)+k/5],params);
        end
        if ~mod(i,k)
            subplot(1,2,1); imagesc(s([1:48 50:97 99:146 148:195 197:244],:)); title(['Sweep ' num2str(t) ', Entry ' num2str(i) ' of ' num2str(numel(s))]); drawnow
        end
    end
    scores = [scores score(a,s,v,d,d_hyp,params)];
    subplot(1,2,2); plot(scores); 
end

function [s2 d2] = sample_s(a,e,s,v,d,d_hyp,diff,params)

d2 = d;
s2 = s;
s2(diff) = mod(s(diff)+1,2);
for j = 1:length(diff)
    if s2(diff) == 1
        [k b] = ind2sub(size(s),diff(j));
        for i = 1:10
            prob = v(:,k)*s2(k,b)*d2(k,b)./(e(b) + v*(s2(:,b).*d2(:,b))); % for all frequencies m, the average fraction of a(m,b) from instrument k
            z = sum(binornd(floor(a(:,b)),prob));
            d2(k,b) = gamrnd(d_hyp + z, 1./( d_hyp + s2(k,b)*sum(v(:,k))));
        end
    else
        d2(diff(j)) = gamrnd(d_hyp,d_hyp);
    end
end

if scoreDiff(a,v,s,s2,d,d2,d_hyp,diff,params) < log(rand)
    s2 = s;
    d2 = d;
end

function d = sample_d(z,s,v,d_hyp)

d = gamrnd(d_hyp + z(2:end,:), 1./( d_hyp + diag(sum(v))*s ));

function z = sample_z(a,e,s,v,d)

k = size(v,2);
m = size(a,1);
n = size(a,2);

prob = cat(3,ones(m,1)*e, zeros(m,n,k));
for i = 1:k
    prob(:,:,i+1) = v(:,i)*(s(i,:).*d(i,:));
end
normprob = prob./repmat(sum(prob,3),[1 1 k+1]);

z = zeros(m,n,k+1);
for i = 1:n
    z(:,i,:) = mnrnd(floor(a(:,i)),squeeze(normprob(:,i,:)));
end
z = squeeze(sum(z))';

function score = logprobA(a,s,v,d)

h = v*(s.*d);
score = sum(a(:) .* log(h(:)) - h(:)); % log poisson likelihood

function score = logprobD(d,d_hyp)

score = (d_hyp-1)*sum(log(d(:))) - d_hyp*(sum(d(:))); % log gamma likelihood

function logprob = score(a,s,v,d,d_hyp,params)

logprob = logprobA(a,s,v,d) + logprobD(d,d_hyp) + logprobS(s,params);

function logprobdiff = scoreDiff(a,v,s,s2,d,d2,d_hyp,diff,params)

[k b] = ind2sub(size(s),diff); 
logprobdiff = logprobA(a(:,b),s2(:,b),v,d2(:,b)) - logprobA(a(:,b),s(:,b),v,d(:,b)) + ...
    logprobD(d2(diff),d_hyp) - logprobD(d(diff),d_hyp) + ...
    logprobSdiff(s,params,diff);