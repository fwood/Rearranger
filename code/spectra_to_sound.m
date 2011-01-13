function wv = spectra_to_sound(spec)
% Turns a spectrogram into a sound waveform

wv = [];
for t = 1:size(spec,2)
    rphase = exp(1i*2*pi*rand(size(spec, 1), 1));
    R = real(ifft([spec(:,t) .* rphase; spec(end-1:-1:2,t) .* conj(rphase(end-1:-1:2))])');
    wv = [wv R(1:(end/2))];
end