function [params] = getMRFparams()

params.alpha = 5;
params.beta = 2.5;
params.gamma = -0.5;
params.delta = 1;

K = 5; % instrument / voice
N = 12*4+1; % notes (+1 for rest)

midNotePotential = repmat([ abs(linspace(-1,1,N-1)) params.delta]',K,1);

params.M = midNotePotential;
params.M_prime = params.M;


for i=1:size(midNotePotential,1)
    if mod(i,49) == 0
        params.M(i,:) = zeros(size(midNotePotential,2),1)';        
        params.M_bin(i,:) = zeros(size(midNotePotential,2),1)';
    end
    if mod(i,49) ~= 0
        params.M_prime(i,:) = zeros(size(midNotePotential,2),1)';        
        params.M_bin(i,:) = ones(size(midNotePotential,2),1)';
    end
end



%params.epsilon = 1;