function [p] = logprobS(S,params)    
    
alpha = params.alpha;
beta = params.beta;
gamma = params.gamma;
delta = params.delta;
M = params.M;
M_prime = params.M_prime;

s1 = 0;
s2 = 0;
s3 = 0;
s4 = 0;


s1 = s1 - alpha * sum(sum(S.*M));
s2 = s2 - beta * sum(sum(diff(S, [], 2) .^2));
s3 = s3 + gamma * sum(S(:).*S(:));
s4 = s4 - delta * sum(sum(S.*M_prime));

p = exp(s1+s2+s3+s4);

% for v=1:size(S,1)
%     for b=1:size(S,2)
%         s1 = s1 + S(v,b)*M(v,b);
%         if b > 1
%             s2 = s2 + (S(v,b)-S(v,b-1))^2;
%         end
%         s3 = s3 + S(v,b)^2;
%         s4 = s4 + S(v,b)*M_prime(v,b);
%     end
% end
% 
% p = exp(-alpha*s1 - beta*s2 + gamma*s3 - delta*s4);

end

% alpha = -1*alpha;
% beta = -1*beta;
