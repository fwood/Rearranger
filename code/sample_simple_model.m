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

function aux = sample_aux(a,e,s,v,d)

k = size(v,2);

prob = cat(3,ones(size(a,1),1)*e, zeros(size(a,1),size(a,2),k));
for i = 1:k
    prob(:,:,i+1) = v(:,k)*(s(k,:).*d(k,:));
end
cumprob = cumsum(prob,3)./repmat(sum(prob,3),[1 1 k]);

aux = mnrnd(a(:),reshape(permute(cumprob,[3 2 1]),k,numel(a)));