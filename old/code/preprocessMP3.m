%global projectBaseDir;
projectBaseDir = '/Users/fwood/Projects/Rearranger/';
addpath '~/bin/mp3readwrite/mp3readwrite/';

[p,q] = rat(48000/ns,10e-6);

[Y,ns] = mp3read('~/bin/mp3readwrite/mp3readwrite/fat.mp3');

fatBottomedGirls = resample(mean(Y,2),p,q);

%sound(Z,48000)

save([projectBaseDir 'data/fat.mat'],'fatBottomedGirls');