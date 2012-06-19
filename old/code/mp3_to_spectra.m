function [spectra times sr] = mp3_to_spectra(file,window)
% Given path to mp3 ('file') converts the sound to a spectrogram and
% returns a map from beats to spectrogram time bins
%
% file - path to mp3
% window - width of a spectrogram time bin (with Hamming window)
%
% spectra - the spectrogram of the signal
% times - the length of each bin, in seconds
% sr - sampling rate of the signal
%
% David Pfau, 2011
% Using many functions by Dan Ellis et al, labrosa.ee.columbia.edu

if nargin == 1
    window = 4096;
end

[wv,sr] = mp3read(file);
wv = sum(wv,2)/size(wv,2);
spectra = abs(spectrogram(wv,window));

times = ceil(2*sr*beat(wv,sr)/window);
times = [times size(spectra,2)];