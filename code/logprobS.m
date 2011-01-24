function [p,s2] = logprobS(S,params)    
% this is the function to determine the log prob for S given the params   

alpha = params.alpha;
beta = params.beta;
gamma = params.gamma;
delta = params.delta;

B = size(S,2); % # of beats    
M = params.M*ones(1,B);
M_prime = params.M_prime*ones(1,B);
% M = params.M;
% M_prime = params.M_prime;
% M_bin = params.M_bin;

s1 = -alpha * sum(sum(S.*M));
s2 = -beta * sum(sum(diff(S, [], 2) .^2));
s3 = gamma * sum(S(:).*S(:));
s4 = -delta * sum(sum(S.*M_prime));

p = (s1+s2+s3+s4);
% p = s3;
end

