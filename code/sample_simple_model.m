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

d_hyp = 1; % d ~ Gamma(d_hyp,d_hyp)

k = size(v,2); % the number of distinct instruments and notes
m = size(a,1);
n = size(a,2);

e = ones(1,size(a,2)); % for now, either sample or integrate out later

s = rand(k,n) > 0.5;
d = gamrnd(d_hyp,1/d_hyp,[k n]);

aux = sample_aux(a,e,s,v,d);
d = sample_d(aux,s,v,d_hyp);

function d = sample_d(aux,s,v,d_hyp)

d = gamrnd(d_hyp + aux(2:end,:), 1./( d_hyp + diag(sum(v))*s ));

function aux = sample_aux(a,e,s,v,d)

k = size(v,2);
m = size(a,1);
n = size(a,2);

prob = cat(3,ones(m,1)*e, zeros(m,n,k));
for i = 1:k
    prob(:,:,i+1) = v(:,i)*(s(i,:).*d(i,:));
end
normprob = prob./repmat(sum(prob,3),[1 1 k+1]);

sum(reshape(permute(normprob,[3 2 1]),k+1,numel(a)),2) % should sum to 1!
aux = mnrnd(a(:),reshape(permute(normprob,[3 2 1]),k+1,numel(a)));
aux = squeeze(sum(reshape(aux,[m n k+1])))';