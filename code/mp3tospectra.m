function spectra = mp3tospectra(file,unit)
% Given path to mp3 ('file') reads in the waveform, finds the beats, and
% takes the spectrum within each beat, returning a cell array of spectra.
%
% file - path to mp3
% unit - The smallest fraction of a beat we consider (eg 4 -> 16th notes)
%
% David Pfau, 2011
% Using many functions by Dan Ellis et al, labrosa.ee.columbia.edu

if nargin == 1
    unit = 1;
end

[wv,sr] = mp3read(file);
beats = beat((wv(:,1)+wv(:,2))/2,sr);
spectra = cell(size(beats,1)*unit,1);
beats = [beats size(wv,1)/sr]; % add length of track to end
for i = 1:length(beats)-1
    for j = 1:unit
        a = floor((beats(i) + (j-1)*(beats(i+1)-beats(i))/unit)*sr);
        b = floor((beats(i) +     j*(beats(i+1)-beats(i))/unit)*sr);
        spectra{unit*(i-1)+j} = abs(fft(0.5*(wv(a:b,1)+wv(a:b,2))));
    end
end