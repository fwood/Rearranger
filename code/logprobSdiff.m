function [d] = logprobSdiff(S,params,inds)
% function [d] = logprobSdiff(S,params,inds)

% pass inds as linear array of indices

% L = length(S(:));

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
% V = size(S,1); % # of voices
B = size(S,2); % # of beats    
M = params.M*ones(1,B);
M_prime = params.M_prime*ones(1,B);
% M = params.M;
% M_prime = params.M_prime;
% M_bin = params.M_bin;

S_new = S;
S_new(inds) = 1-S(inds);

s_alpha = alpha*(sum((M(inds).*S(inds))) - sum((M(inds).*(1-S(inds)))));

% s_b1 = 0;
% s_b2 = 0;
% s_b3 = 0;

s_beta = beta*(sum(sum(diff(S,[],2).^2)) - sum(sum(diff(S_new,[],2).^2)));

% s2 = -beta * sum(sum(diff(S, [], 2) .^2));

% for i=1:L
%     if i<=245 % if in first column
%         s_b1 = s_b1 + beta*((S(inds+245)-S(inds)).^2 - (S(inds+245)-(1.-S(inds))).^2);
%     elseif i>(L-245) % if in last column
%         s_b2 = s_b2 + beta*((S(inds)-S(inds-245)).^2 - (S(inds)-(1.-S(inds-245))).^2);
%     else % otherwise, look to either side
%         s_b3 = s_b3 + beta*((S(inds+245)-S(inds)).^2 + (S(inds)-S(inds-245)).^2)...
%             - beta*((S(inds+245)-(1.-S(inds))).^2 + (S(inds)-(1.-S(inds-245))).^2);
%     end
% end
% s_beta = sum(s_b1) + sum(s_b2) + sum(s_b3);

s_gamma = gamma*((sum(S(inds)==0)) - sum(S(inds)==1));
s_delta = delta*(sum((M_prime(inds).*(1-S(inds))) - sum(M_prime(inds).*S(inds))));

d = s_alpha + s_beta + s_gamma + s_delta;
end
