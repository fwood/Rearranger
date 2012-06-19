%% load data
load ../data/fat.mat
load ../data/brassQuintetFeatures.mat
ns = 48000;
global V;

% 5 and 22 seconds are good cut-offs in fat.mat, ie.
% soundsc(fatBottomedGirls(1:5*ns),ns)

samples_to_spectra

%% get the spectrogram of fat bottomed girls
A = abs(spectrogram(fatBottomedGirls(1*ns:3*ns),winsize));
%imagesc(abs(A).^(2/5))
%set(gca,'YDir','normal')

%% reconstruct the sound source from the spectrogram
% recon =  []; zeros(1,5*ns);
recon = zeros(1,size(A,2)*size(A,1)*2);
for t = 1:size(A,2)
    rphase = exp(1i*2*pi*rand(size(A, 1), 1));
    %recon((t-1)*winsize+(1:winsize)) = ifft([A(:,t); A(end-1:-1:2,t)])';
    R = real(ifft([A(:,t) .* rphase; A(end-1:-1:2,t) .* conj(rphase(end-1:-1:2))])');
    recon((t-1)*length(R)/2+1:t*length(R)/2) = R(1:(end/2));
end

soundsc(recon,ns)

%%
K = 5; % instrument / voice
N = 12*4+1; % notes (+1 for rest)

T = size(A,2);%A=abs(real(A(:,25:(25+T-1)))); %size(A,2); % number of "time steps" 
B = T; % until beat tracking


 V = [];
for k = 1:K
    V = [V brassSpectra(:,(k-1)*(N-1)+(1:(N-1))) zeros(size(brassSpectra,1),1)+eps];
end

% H = V*(D.*S);
% A = brassSpectra * H;
D = rand(size(V,2),B);
S = rand(size(V,2),B);
% S(N:N:size(S,1),:) = 1;

delta = 1;
midNotePotential = repmat([ abs(linspace(-1,1,N-1)) delta]',K,B);

%%

functionToMiminize = @(params)scoreScore(K,N,A,V,midNotePotential,params);

% Setup configuration
config = optimset();
config = optimset(config, 'Algorithm', 'interior-point');
%config = optimset(config, 'Algorithm', 'active-set');
%config = optimset(config, 'Algorithm', 'trust-region-reflective');
%config = optimset(config, 'Display', 'off');
%config = optimset(config, 'Display', 'iter');
config = optimset(config, 'Display', 'iter-detailed');
%config = optimset(config, 'Display', 'notify');
%config = optimset(config, 'Display', 'notify-detailed');
%config = optimset(config, 'Display', 'final');
%config = optimset(config, 'Display', 'final-detailed');
config = optimset(config, 'MaxFunEvals',10e6);
config = optimset(config, 'PlotFcns', {'plotModelParams'});
%options.getMaxFunctionEvaluations());
config = optimset(config, 'MaxIter', 500);
%config = optimset(config, 'TolFun', options.getFunctionTolerance());
config = optimset(config, 'TolCon', .01);
%config = optimset(config, 'TolX', options.getParameterTolerance());
config = optimset(config, 'TolX', 1e-10);
config = optimset(config, 'GradObj', 'on');
% config = optimset(config, 'DerivativeCheck', 'on');
config = optimset(config, 'Hessian','lbfgs');

%initParams = zeros(numel(S)+numel(D),1);
initParams = [reshape(S,numel(S),1); reshape(D,numel(D),1)];
%Abnd = -speye(length(initParams)); % not needed, can be done via lb and ub
%bbnd = zeros(length(initParams),1); % same

%S = reshape(params(1:(K*N*B)),K*N,B);

Aeq = sparse(K*B,K*N*B*2);
beq = ones(K*B,1);

for k = 1:K
        for bb = 1:B
            Aeq((k-1)*B + bb,((k-1)*B + bb-1)*N+(1:(N))) = 1;
        end
end

lb = sparse(length(initParams),1);
ub = [];

[learnedParams, fval, exitFlag] = fmincon(functionToMiminize, initParams, [], [], Aeq, beq, lb, ub, [], config);

learnedS = reshape(learnedParams(1:(K*N*B)),K*N,B);
learnedD = reshape(learnedParams(((K*N*B)+1):end),K*N,B);
figure(3)
subplot(2,1,1)
imagesc(learnedS)
title('S')
subplot(2,1,2)
imagesc(learnedD)
title('D')
colorbar