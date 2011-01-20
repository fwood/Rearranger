function [d] = logprobDiff(S,params,inds)

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

s_alpha = alpha*(M(inds).*S(inds) - (M(inds).*(1-S(inds))));

s_b1 = 0;
s_b2 = 0;
s_b3 = 0;
for i=1:L
    if i<=245 % if in first column
        s_b1 = s_b1 + beta*((S(inds+245)-S(inds))^2 - (S(inds)-(1.-S(inds-245)))^2);
    elseif i>(L-245) % if in last column
        s_b2 = s_b2 + beta*((S(inds+245)-S(inds))^2 - (S(inds)-(1.-S(inds-245)))^2);
    else % otherwise, look to either side
        s_b3 = s_b3 + beta*((S(inds+245)-S(inds))^2 + (S(inds)-S(inds-245))^2)...
            - beta*((S(inds+245)-(1.-S(inds)))^2 + (S(inds)-(1.-S(inds-245)))^2);
    end
end

s_beta = s_b1 + s_b2 + s_b3;
s_gamma = gamma*(sum(S(inds)==1) - (sum(S(inds)==0)));
s_delta = delta*(M_prime(inds).*S(inds) - (M_prime(inds).*(1-S(inds))));

d = s_alpha + s_beta + s_gamma + s_delta;
% d = [s_alpha, s_beta, s_gamma, s_delta];

end
