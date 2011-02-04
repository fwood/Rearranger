function [params] = getMRFparams()

% params.alpha = 1;
% params.beta = 3.0;
% params.gamma = -1;
% params.delta = 1;
params.alpha = 4;
params.beta = 2.5;
params.gamma = -0.5;
params.delta = 0;
% params.U = 1;
% params.m2 = 1;
% params.M2 = 1;
% params.m3 = 1;
% params.M3 = 1;
% params.P4 = 1;
% params.TT = 1;
% params.P5 = 1;
% params.m6 = 1;
% params.M6 = 1;
% params.m7 = 1;
% params.M7 = 1;
params.harms = ones(12,1);
params.jumps = ones(95,1);

K = 5; % instrument / voice
N = 12*4+1; % notes (+1 for rest)

midNotePotential = repmat([ abs(linspace(-1,1,N-1)) params.delta]',K,1);

params.M = midNotePotential;
params.M_prime = params.M;


for i=1:size(midNotePotential,1)
    if mod(i,49) == 0
        params.M(i,:) = zeros(size(midNotePotential,2),1)';        
        params.M_bin(i,:) = zeros(size(midNotePotential,2),1)';
        params.M_prime(i,:) = ones(size(midNotePotential,2),1)';        
    end
    if mod(i,49) ~= 0
        params.M_prime(i,:) = zeros(size(midNotePotential,2),1)';        
        params.M_bin(i,:) = ones(size(midNotePotential,2),1)';
    end
end

end