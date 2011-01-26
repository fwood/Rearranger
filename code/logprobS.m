function [p,s2] = logprobS(S,params)    
% this is the function to determine the log prob for S given the params   

alpha = params.alpha;
beta = params.beta;
gamma = params.gamma;
delta = params.delta;
% epsilon = params.epsilon;

B = size(S,2); % # of beats    
M = params.M*ones(1,B);
M_prime = params.M_prime*ones(1,B);
% M = params.M;
% M_prime = params.M_prime;
% M_bin = params.M_bin*ones(1,B);

s1 = -alpha * sum(sum(S.*M));
s2 = -beta * sum(sum(diff(S, [], 2) .^2));
s3 = gamma * sum(S(:).*S(:));
% s3 = gamma * sum(sum(S.*M_bin));
s4 = -delta * sum(sum(S.*M_prime));
% s5 = epsilon * 




p = (s1+s2+s3+s4);
% p = s3;
end


% epsilon = params.epsilon;
% 
% part1 = S(1:49,:);
% part2 = S(50:98,:);
% part3 = S(99:147,:);
% part4 = S(148:196,:);
% part5 = S(197:245,:);
% [V,B] = size(part1,1);
% 
% 
% s5 = -epsilon * 