function [params] = getMRFparams(ColumnsOfA)

K = 5; % instrument / voice
N = 12*4+1; % notes (+1 for rest)

T = length(ColumnsOfA);%A=abs(real(A(:,25:(25+T-1)))); %size(A,2); % number of "time steps" 
B = T; % until beat tracking

delta = 1;
midNotePotential = repmat([ abs(linspace(-1,1,N-1)) delta]',K,B);

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

params.alpha = 1;
params.beta = 1;
params.gamma = 1;
params.delta = 1;
params.M = M;
params.M_prime = M_prime;



%params.epsilon = 1;