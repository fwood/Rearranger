function state = plotModelParams(params, optimValues, state, extras)
K = 5;
N = 49;
B = length(params)/(K*N)/2; % until beat tracking
ns = 48000;
global V;

S = reshape(params(1:(K*N*B)),K*N,B);
D = reshape(params(((K*N*B)+1):end),K*N,B);


%% reconstruct the sound source from the spectrogram
recon =  []; 
A = V*(S.*D);

%% reconstruct the sound source from the spectrogram
recon =  []; zeros(1,5*ns);
for t = 1:size(A,2)
    rphase = exp(1i*2*pi*rand(size(A, 1), 1));
    %recon((t-1)*winsize+(1:winsize)) = ifft([A(:,t); A(end-1:-1:2,t)])';
    R = real(ifft([A(:,t) .* rphase; A(end-1:-1:2,t) .* conj(rphase(end-1:-1:2))])');
    recon = [recon R(1:(end/2))];
end

if (mod(optimValues.funccount, 10) == 0)
    soundsc(recon,ns)
end


%figure(1)
%subplot(2,1,1)
imagesc(S)
title('S')
%subplot(2,1,2)
%imagesc(D)
%title('D')
%colorbar

state = 0;

