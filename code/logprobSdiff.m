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

[R,~] = ind2sub(size(S),inds);


alpha = params.alpha;
beta = params.beta;
gamma = params.gamma;
delta = params.delta;
% V = size(S,1); % # of voices

% B = size(S,2); % # of beats    

% M = params.M*ones(1,B);
% M_prime = params.M_prime*ones(1,B);
% M = params.M;
% M_prime = params.M_prime;
% M_bin = params.M_bin*ones(1,B);

% S_new = S;
% S_new(inds) = 1-S(inds);

s_alpha = alpha*(sum((params.M(R)'.*S(inds))) - sum((params.M(R)'.*(1-S(inds)))));

% s_b1 = 0;
% s_b2 = 0;
% s_b3 = 0;

% s_beta = beta*(sum(sum(diff(S,[],2).^2)) - sum(sum(diff(S_new,[],2).^2)));
forward_inds = inds(inds <= numel(S) - size(S, 1));
backward_inds = inds(inds > size(S, 1));
% s_beta = beta*(sum((S(forward_inds+size(S, 1)) - S(forward_inds)).^2) ...
%     + sum((S(backward_inds) - S(backward_inds - size(S, 1))).^2) ...
%     - sum((S_new(forward_inds+size(S, 1)) - S_new(forward_inds)).^2) ...
%     - sum((S_new(backward_inds) - S_new(backward_inds - size(S, 1))).^2));
s_beta = beta*(sum((S(forward_inds+size(S, 1)) - S(forward_inds)).^2) ...
    + sum((S(backward_inds) - S(backward_inds - size(S, 1))).^2));
S_new = sparse(size(S, 1), size(S, 2));
S_new(inds) = S(inds);
S_new(forward_inds + size(S, 1)) = S(forward_inds + size(S, 1));
S_new(backward_inds - size(S, 1)) = S(backward_inds - size(S, 1));
S_new(inds) = 1 - S_new(inds);
s_beta = s_beta - beta*(sum((S_new(forward_inds+size(S, 1)) - S_new(forward_inds)).^2) ...
    + sum((S_new(backward_inds) - S_new(backward_inds - size(S, 1))).^2));

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
% s_gamma = gamma*(sum((params.M_bin(R)'.*S(inds))) - sum((params.M_bin(R)'.*(1-S(inds)))));
s_delta = delta*(sum((params.M_prime(R)'.*(1-S(inds))) - sum(params.M_prime(R)'.*S(inds))));
%% calculate difference scores for harmony parameters
% first remove all rest "on"s from score
intervals_1 = harmony(S);
S_new = S;
S_new(inds) = 1-S(inds);
intervals_2 = harmony(S_new);
s_U = U*(sum(intervals_2(1,:)) - sum(intervals_1(1,:)));
s_m2 = m2*(sum(intervals_2(2,:)) - sum(intervals_1(2,:)));
s_M2 = m2*(sum(intervals_2(3,:)) - sum(intervals_1(3,:)));
s_m3 = m2*(sum(intervals_2(4,:)) - sum(intervals_1(4,:)));
s_M3 = m2*(sum(intervals_2(5,:)) - sum(intervals_1(5,:)));
s_P4 = m2*(sum(intervals_2(6,:)) - sum(intervals_1(6,:)));
s_TT = m2*(sum(intervals_2(7,:)) - sum(intervals_1(7,:)));
s_P5 = m2*(sum(intervals_2(8,:)) - sum(intervals_1(8,:)));
s_m6 = m2*(sum(intervals_2(9,:)) - sum(intervals_1(9,:)));
s_M6 = m2*(sum(intervals_2(10,:)) - sum(intervals_1(10,:)));
s_m7 = m2*(sum(intervals_2(11,:)) - sum(intervals_1(11,:)));
s_M7 = m2*(sum(intervals_2(12,:)) - sum(intervals_1(12,:)));


%%
d = s_alpha + s_beta + s_gamma + s_delta + s_U + s_m2 + s_M2 + s_m3 + s_M3 ...
    + s_P4 + s_TT + s_P5 + s_m6 + s_M6 + s_m7 + s_M7;
end

