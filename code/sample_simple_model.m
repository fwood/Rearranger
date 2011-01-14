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

k = size(v,2); % the number of distinct instruments and notes
s = zeros(k,size(a,2));
d = s;

e = ones(1,size(a,2)); % for now, either sample or integrate out later

s = rand(size(s)) > 0.5;
d = gamrnd(1,1,size(d));

aux = sample_aux(a,e,s,v,d);

function d_new = sample_d(aux,s,v)

k = size(v,2);

function aux = sample_aux(a,e,s,v,d)

k = size(v,2);
m = size(a,1);
n = size(a,2);

prob = cat(3,ones(m,1)*e, zeros(m,n,k));
for i = 1:k
    prob(:,:,i+1) = v(:,i)*(s(i,:).*d(i,:));
end
cumprob = cumsum(prob,3)./repmat(sum(prob,3),[1 1 k+1]);

aux = mnrnd(a(:),reshape(permute(cumprob,[3 2 1]),k+1,numel(a)));