function [d] = logprobDiff(S,params,inds,midNotePotential);

% pass inds as linear array

% L = length(S(:));
% 
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

[M,M_prime] = A2M(midNotePotential);

s_alpha = alpha*(M(inds).*S(inds) - (M(inds).*(1-S(inds))));

% if not in first column... (need to code constraints here)
s_beta = beta*((S(inds)-S(inds-1))^2 - (S(inds)-(1.-S(inds-1)))^2);

s_gamma = gamma*(sum(S(inds)==1) - (sum(S(inds)==0)));
s_delta = delta*(M_prime(inds).*S(inds) - (M_prime(inds).*(1-S(inds))));

d = s_alpha + s_beta + s_gamma + s_delta;

end
