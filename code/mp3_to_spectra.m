function [spectra times sr] = mp3_to_spectra(file,unit)
% Given path to mp3 ('file') reads in the waveform, finds the beats, and
% takes the spectrum within each beat, returning a cell array of spectra.
%
% file - path to mp3
% unit - The smallest fraction of a beat we consider (eg 4 -> 16th notes)
%
% spectra - the spectrogram of the signal
% times - the length of each bin, in seconds
% sr - sampling rate of the signal
%
% David Pfau, 2011
% Using many functions by Dan Ellis et al, labrosa.ee.columbia.edu

if nargin == 1
    unit = 1;
end

[wv,sr] = mp3read(file);
wv = sum(wv,2)/size(wv,2);
beats = beat(wv,sr);
times = zeros(unit*length(beats),1);
beats = [beats length(wv)/sr]; % add length of track to end
for i = 1:length(beats)-1
    times(unit*(i-1)+1:unit*i-1) = floor((beats(i+1)-beats(i))/unit);
    times(unit*i) = beats(i+1)-beats(i)-sum(times(unit*(i-1)+1:unit*i-1)); % this way there's no rounding error
end
spectra = spectrogram(wv,times);