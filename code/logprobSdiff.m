function [d] = logprobSdiff(S,params,inds)

% pass inds as linear array of indices

L = length(S(:));

% part1 = S(1:49,:);
% part2 = S(50:98,:);
% part3 = S(99:147,:);
% part4 = S(148:196,:);
% part5 = S(197:245,:);
% 
% [V,B] = size(part1);

alpha = params.alpha;
beta = params.beta;
gamma = params.gamma;
delta = params.delta;
M = params.M;
M_prime = params.M_prime;

S_new = S;
S_new(inds) = 1-S(inds);

s_alpha = alpha*(sum((M(inds).*S(inds))) - sum((M(inds).*(1-S(inds)))));
s_beta = beta*(sum(sum(diff(S,[],2).^2)) - sum(sum(diff(S_new,[],2).^2)));
s_gamma = gamma*((sum(S(inds)==0)) - sum(S(inds)==1));
s_delta = delta*(sum((M_prime(inds).*(1-S(inds))) - sum(M_prime(inds).*S(inds))));

d = s_alpha + s_beta + s_gamma + s_delta;
end
