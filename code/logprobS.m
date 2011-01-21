function [p,s2] = logprobS(S,params)    
% this is the function to determine the log prob for S given the params   

alpha = params.alpha;
beta = params.beta;
gamma = params.gamma;
delta = params.delta;
M = params.M;
M_prime = params.M_prime;

s1 = -alpha * sum(sum(S.*M));
s2 = -beta * sum(sum(diff(S, [], 2) .^2));
s3 = gamma * sum(S(:).*S(:));
s4 = -delta * sum(sum(S.*M_prime));

p = (s1+s2+s3+s4);
end

