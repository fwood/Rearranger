function [M, M_prime] = A2M(midNotePotential)

% extract rests from A, divide into matrices M and M_prime (M')
% M has all note values, but no rest values
% M' has all rest values, but no note values

% take WHOLE_SCORE as input

M = midNotePotential;
M_prime = M;


for i=1:size(midNotePotential,1)
    if mod(i,49) == 0
        M(i,:) = zeros(size(midNotePotential,2),1)';        
    end
    if mod(i,49) ~= 0
        M_prime(i,:) = zeros(size(midNotePotential,2),1)';        
    end
end