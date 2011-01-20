function [p] = probS(S,params)    
    

[M,M_prime]=A2M(midNotePotential);

getMRFparams();

alpha = params.alpha;
beta = params.beta;
gamma = params.gamma;
delta = params.delta;

s1 = 0;
s2 = 0;
s3 = 0;
s4 = 0;

for v=1:size(S,1)
    for b=1:size(S,2)
        s1 = s1 + S(v,b)*M(v,b);
        s3 = s3 + S(v,b)^2;
        s4 = s4 + S(v,b)*M_prime(v,b);
        if b > 1
            s2 = s2 + (S(v,b)-S(v,b-1))^2;
        end
    end
end

p = exp((-1) * alpha*s1 - beta*s2 + gamma*s3 - delta*s4);

end

% alpha = -1*alpha;
% beta = -1*beta;
