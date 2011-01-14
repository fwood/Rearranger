function sig = sgInverse(sg)
% function sig = sgInverse(sg)
% 
% Produces a signal sig that approximates the signal responsible for
% generating the magnitude spectrogram sg (with 50% overlap per window).

truesg = [sg; sg(end-1:-1:2, :)];
sg = truesg;
winsize = size(truesg, 1);

nsteps = 200;
for i = 1:nsteps,
    sig = real(ifft(sg));
    sig(winsize/2+1:end, 1:end-1) = sig(winsize/2+1:end, 1:end-1) + ...
        sig(1:winsize/2, 2:end);
    sig = [sig(1:winsize/2, 1), sig(winsize/2+1:end, :)];
    sig = reshape(sig, numel(sig), 1);
    if (i == nsteps)
        break;
    end
    sg = spectrogram(sig, winsize);
    sg = [sg; conj(sg(end-1:-1:2, :))];
    score = sum((abs(sg(:)) - truesg(:)).^2);
    fprintf('%d:  score = %f\n', i, score);
    sg = sg .* truesg ./ (abs(sg) + eps);
end