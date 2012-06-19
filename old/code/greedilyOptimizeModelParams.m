function [D S] = greedilyOptimizeModelParams(K,N,A,V,midNotePotential,D,S)
params = [reshape(S,numel(S),1); reshape(D,numel(D),1)];
currentScore = scoreScore(K,N,A,V,midNotePotential,params);
highestScore = currentScore;
highestScoreIndex = 0;

for sweep = 1:100
    change = 0;
    for k = 1:K
        for b = 1:size(A,2)
            % switch one entry of S
            for n = 1:N
               
            end
            % compute resulting score
            currentScore = scoreScore(K,N,A,V,midNotePotential,params);
            
            if currentScore > highestScore
                highestScoreIndex = n;
                change = 1;
            else
            end
            
            switch S(n)
                case 0
                    S(n) = 1;
                    params(n) = 1;
                    
                case 1
                    S(n) = 0;
                    params(n) = 0;
            end
            
            if change == 0
                break;
            else
                change = 1;
            end
        end
    end
    
    if highestScoreIndex==0
        break;
    end
    
    switch S(highestScoreIndex)
        case 0
            S(highestScoreIndex) = 1;
            params(highestScoreIndex) = 1;
            
        case 1
            S(highestScoreIndex) = 0;
            params(highestScoreIndex) = 0;
    end
    
    % reconstruct the sound source from the spectrogram
    ns = 48000;
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
    
    soundsc(recon,ns)
    
    
    imagesc(S);
    drawnow;
end
