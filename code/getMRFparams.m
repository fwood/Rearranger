function [params] = getMRFparams()

% params.alpha = 1;
% params.beta = 3.0;
% params.gamma = -1;
% params.delta = 1;
params.alpha = 4;
params.beta = 2.5;
params.gamma = -0.5;
params.delta = 0;

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

% % params.epsilon = 1;
% % params.omicron = 1;
% o = diag(ones(1,49));
% for i=1:49
%     o = o + diag(ones(1,i),49-i)*(i/49) + diag(ones(1,i),-(49-i))*(i/49);
%     if 
%         
%     end
%     o(end,1:end-1) = ones(1,1:end-1)*.5;
%     o(1:end-1,end) = ones(1:end-1,1)*.5;
%     o(end) = .5;
% end