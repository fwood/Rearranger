function [d] = logprobSdiff(S,params,inds)
% function [d] = logprobSdiff(S,params,inds)
% pass inds as linear array of indices, in this case a note on and the
% necessary note off in the same part at the same time

% L = length(S(:));

% part1 = S(1:49,:);
% part2 = S(50:98,:);
% part3 = S(99:147,:);
% part4 = S(148:196,:);
% part5 = S(197:245,:);
% 
% [V,B] = size(part1);

[R,C] = ind2sub(size(S),inds);


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


s_gamma = gamma*((sum(S(inds)==0)) - sum(S(inds)==1));
% s_gamma = gamma*(sum((params.M_bin(R)'.*S(inds))) - sum((params.M_bin(R)'.*(1-S(inds)))));
s_delta = delta*(sum((params.M_prime(R)'.*(1-S(inds))) - sum(params.M_prime(R)'.*S(inds))));

% calculate difference scores for harmony & note movement parameters
% use only the columns from inds

%[R,C] = ind2sub(size(S),inds); R & C

harm_inds = S(:,C(1)); % extract column from S that contains inds
harm_inds_prime = harm_inds;
harm_inds_prime(R) = 1-harm_inds_prime(R);

if C(1)==1
    NM_inds = S(:,1:2);
    NM_inds_prime = NM_inds;
    NM_inds_prime(R,1) = 1 - NM_inds_prime(R,1);
elseif C(end)==size(S,2)
    NM_inds = S(:,(end-1):end);
    NM_inds_prime = NM_inds;
    NM_inds_prime(R,2) = 1 - NM_inds_prime(R,2);
else
    NM_inds = S(:,(C(1)-1):(C(1)+1)); % extract 3-column matrix that contains inds and the one column on either side
    NM_inds_prime = NM_inds;
    NM_inds_prime(R,2) = 1 - NM_inds_prime(R,2);
end

intervals1 = harmony(harm_inds); % generate harmony matrix for only columns affected by inds
intervals2 = harmony(harm_inds_prime);

jumps1 = note_movement(NM_inds); % similarly, generate inds-centric note_movement vector
jumps2 = note_movement(NM_inds_prime);

s_harms = -params.harms .*(intervals2 - intervals1);
s_NM = -params.jumps .* (jumps2 - jumps1);
        
      
d = s_alpha + s_beta + s_gamma + s_delta + sum(s_harms) + sum(s_NM);


end