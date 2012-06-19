%global projectBaseDir;
projectBaseDir = '/Users/fwood/Projects/Rearranger/';
addpath '~/bin/mp3readwrite/mp3readwrite/';

[status mp3FileDetails] = system(['find ' projectBaseDir ' -name ''*.mp3'' -print | awk ''{split($0,a,"-"); i = a[4]; split(i,b,"."); j = a[1]; split(j,c,"/"); print c[length(c)-1] " "c[length(c)] " " a[2] " " a[3] " " b[2]}''']);
fileMatrix=regexp(mp3FileDetails,'\s','split')

fileDetails = cell(1,4);
done =0;
i = 1;
j=1;
while ~done
    fileDetails{i,1} = fileMatrix{j}; j=j+1;
    %if j>length(fileMatrix) || strcmp(fileMatrix{j},'') || strcmp(fileMatrix{j},' ') || strcmp(fileMatrix{j},'mp3')
    %    done =1;
    %    fileDetails(end,:) = []
    %    continue;
    %end
    fileDetails{i,2} = fileMatrix{j};j=j+1;
    fileDetails{i,3} = fileMatrix{j};j=j+1;
    fileDetails{i,4} = fileMatrix{j};j=j+2;
    
    if j>length(fileMatrix) || strcmp(fileMatrix{j},'') || strcmp(fileMatrix{j},' ') || strcmp(fileMatrix{j},'mp3')
        done =1;
    end
    i=i+1;
    
end



% instrument, note, octave

waveform = cell(4,12,4);
fs = zeros(4,12,4);

% a a# b c c# d d# e f f# g g#
% 10 11 12 1 2  3 4  5 6  7 8  9 
%
% trumpet = 1
% french horn = 2
% trombone = 3
% tuba = 4
%
% octave 1, 2, 3, 4 (lowest to highest for instrument)

for i = 1:length(fileDetails)
    
    note = fileDetails{i,3};
    absoluteOctave = note(end);
    note = note(1:(end-1));
    
    switch fileDetails{i,2}
        case 't2stcMF' % 'trumpet'
            instrument = 1;
            relativeOctave = str2num(absoluteOctave)-2;
        case 'tbcstcMF' % 'tuba'
            instrument = 4;
            relativeOctave = str2num(absoluteOctave);
        case 'h6stcMF' % 'french_horn';
            instrument = 2;
            relativeOctave = str2num(absoluteOctave)-1;
        case 'b2stcMF' % 'trombone'
            instrument = 3;
            relativeOctave = str2num(absoluteOctave)-1;
        otherwise
            error('unknown instrument in mp3 archive');
    end
    
    
    switch note
        case 'a'
            noteIndex = 10;
        case 'a#'
            noteIndex = 11;
        case 'b'
            noteIndex = 12;
        case 'c'
            noteIndex = 1;
        case 'c#'
            noteIndex = 2;
        case 'd'
            noteIndex = 3;
        case 'd#'
            noteIndex = 4;
        case 'e'
            noteIndex = 5;
        case 'f'
            noteIndex = 6;
        case 'f#'
            noteIndex = 7;
        case 'g'
            noteIndex = 8;
        case 'g#' 
            noteIndex = 9;
        otherwise 
            error('unknown note');
    end
    
    % [waveforms{instrument,noteIndex,relativeOctave},
    % fs(instrument,noteIndex,relativeOctave)]
     [Y ns] = mp3read([projectBaseDir 'samples/mp3s/' fileDetails{i,1} '/' fileDetails{i,2} '-' fileDetails{i,3} '-' fileDetails{i,4} '-' fileDetails{i,3} '.mp3']);
    waveforms{instrument,noteIndex,relativeOctave} = mean(Y,2);
    fs(instrument,noteIndex,relativeOctave) = ns;
end

%% fill in missing notes

for instrument = 1:4
    for octave = 1:4
        firstNoteIndex = 1;
        while isempty(waveforms{instrument,firstNoteIndex,octave}) 
            firstNoteIndex=firstNoteIndex+1;
        end
        
        for j = firstNoteIndex-1:-1:1
            [p,q] = rat(2^(-(firstNoteIndex-j)/12),10e-6);
            waveforms{instrument,j,octave} = resample(waveforms{instrument,firstNoteIndex,octave},q,p);
        end
        
        for k = (firstNoteIndex+1):12
            if isempty(waveforms{instrument,k,octave})
                [p,q] = rat(2^((k-firstNoteIndex)/12),10e-6); 
                waveforms{instrument,k,octave} = resample(waveforms{instrument,firstNoteIndex,octave},q,p);
            else
                firstNoteIndex=k;
            end
        end
        
        for l = 1:12
                waveforms{instrument,l,octave} = waveforms{instrument,l,octave}(1:32000);
        end

    end
end

%% play stuff
for instrument = 3
    for octave = 1:4
        for note = 1:12
            sound(waveforms{instrument,note,octave},fs(instrument,noteIndex,relativeOctave));
        endbrassQuintetFeatures
    end
end

%% flatten matrix 

brassQuintetFeatures = zeros(5*12*4,32000);

instrumentation = [1 1 2 3 4];
for v=1:5 % voice
    i = instrumentation(v); %instrument
    for o = 1:4 % octave
        for n = 1:12 %note
            brassQuintetFeatures((v-1)*(12*4)+(o-1)*12+n,:) = waveforms{i,n,o}';
        end
    end
end

save([projectBaseDir 'data/brassQuintetFeatures.mat'],'brassQuintetFeatures');