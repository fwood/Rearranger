function [s,d] = sample_simple_model(a,v,nBurn,nSamp,nInter)
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

e = 0.01*ones(1,size(a,2)); % for now, either sample or integrate out later

s = rand(k,n) > 0.1;
d = gamrnd(d_hyp,1/d_hyp,[k n]);

scores = [];
for i = 1:20
    z = sample_z(a,e,s,v,d);
    d = sample_d(z,s,v,d_hyp);
    disp(['Initializing D: ' num2str(i)])
    scores = [scores score(a,s,v,d,d_hyp)];
%     subplot(2,2,1); imagesc(s); title(['Iteration ' num2str(i)])
%     subplot(2,2,2); imagesc(d)
%     subplot(2,2,3); imagesc(z); 
%     subplot(2,2,4); plot(scores); drawnow
end

for i = 1:1000
    [s d] = sample_s(a,e,s,v,d,d_hyp,ceil(numel(s)*rand));
    scores = [scores score(a,s,v,d,d_hyp)];
    subplot(2,1,1); imagesc(s); title(['Iteration ' num2str(i)])
    subplot(2,1,2); plot(scores); drawnow
    score(a,s,v,d,d_hyp)
end

function [s_new d_new] = sample_s(a,e,s,v,d,d_hyp,diff)

d_new = d;
s_new = s;
s_new(diff) = mod(s(diff)+1,2);
for j = 1:length(diff)
    if s_new(diff) == 1
        for i = 1:10
            [k b] = ind2sub(size(s),diff(j));
            prob = v(:,k)*s_new(diff)*d_new(diff)./(e(b) + v*(s_new(:,b).*d_new(:,b))); % for all frequencies m, the average fraction of a(m,b) from instrument k
            z = sum(binornd(floor(a(:,b)),prob));
            if isnan(z)
                pause(1)
            end
            d_new(diff) = gamrnd(d_hyp + z, 1./( d_hyp + s_new(diff)*sum(v(:,k))));
        end
    else
        d_new(diff) = gamrnd(d_hyp,d_hyp);
    end
end

if score(a,s_new,v,d_new,d_hyp) - score(a,s,v,d,d_hyp) < log(rand)
    s_new = s;
    d_new = d;
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

function logprob = score(a,s,v,d,d_hyp)

logprob = logprobA(a,s,v,d) + logprobD(d,d_hyp);% + logprobS(s,getMRFparams(size(s,2)));