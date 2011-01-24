load('../data/brassQuintetFeatures.mat');

winsize = 8192;
brassSpectra = zeros(size(brassQuintetFeatures, 1), winsize/2+1);
for i = 1:size(brassQuintetFeatures, 1),
%     sg = spectrogram(brassQuintetFeatures(i, :), hamming(winsize));
%     brassSpectra(i, :) = sum(abs(sg).^0.25, 2)';
%     imagesc(brassSpectra(1:i, :));
    s = abs(fft(brassQuintetFeatures(i, 5001:5000+winsize)));
    brassSpectra(i, :) = s(1:winsize/2+1);
end
brassSpectra = brassSpectra';
brassSpectra = brassSpectra - repmat(min(brassSpectra, [], 1), size(brassSpectra, 1), 1);