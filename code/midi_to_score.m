% Read a midi file into a score
% Alex Kass, January 2011

% one specific midi file example, needs to be expanded to whole directory
% midi = midiInfo(readmidi('beethoven-ludwig-van-fuge-opus-137-5630.midi'));
% parts = unique(midi(:,1));  % break midi file into parts

midi_files = dir('../midi/quintets/*tchai*.mid*');
% midi_files = dir('../midi/quintets/Weber-quintet1.mid*');
% midi_files = dir('../midi/quintets/*muppets*.mid*');
% dir('../midi/quintets/muppets.mid')

load ../data/brassQuintetFeatures.mat;
samples_to_spectra;
% samps = brassQuintetFeatures;
% tempo = 120; % arbitrary bpm set
% sixteenth = 60 / (tempo*4);
% sixteenth = 300000/(4*1000000);



for index = 1:length(midi_files)
    clear SCORE;
    filename = strcat('../midi/quintets/',midi_files(index).name);
    m = readmidi(filename);
    
    midi = sortrows(midiInfo(m),1);
    %time = linspace(min(midi(:,5)),max(midi(:,6)));
    %time = sort(unique([midi(:,5);midi(:,6)]));
    %time = sort(unique(midi(:,5)));
    %time = 0:sixteenth:max(midi(:,6));
    parts = sort(unique(midi(:,1)));
    div = 1;
    % if the midi file contains instruments on different channels, as opposed
    % to on different tracks, we need to correct for this...
    if size(parts,1) < 2
        parts = sort(unique(midi(:,2)));
        div = 2;
    end
    
    % take only parts that are in sequence (i.e. removing extraneous part
    % information)
    newparts = [];
    for i=1:(length(parts)-1)
        for j=2:length(parts)
            if (parts(j)-parts(i) == 1) && (j == length(parts))
                newparts = [newparts; parts(i); parts(j)];
            elseif parts(j)-parts(i) == 1
                newparts = [newparts; parts(i)];
            else
                continue
            end
        end
    end
    parts = newparts;
    
    % create array of full note range from input midi file - this might be
    % changed to hard-coded ranges for our ultimate chosen instruments
    notes = linspace(min(midi(:,3)),max(midi(:,3)),(max(midi(:,3))-min(midi(:,3)))+1);

    % 4-octave note ranges for each of the five brass instruments, plus a rest holder:
    % 1) trumpet I, 2) trumpet II, 3) french horn, 4) trombone, 5) tuba
    notes_1 = [1,48:95];
    notes_2 = [1,48:95];
    notes_3 = [1,36:83];
    notes_4 = [1,36:83];
    notes_5 = [1,24:71];

    
    % create 3-dimensional matrix with notes x time x parts
    %     SCORE = zeros(length(notes),length(time),length(parts));

    SCORE = cell(length(parts),3);
    
    
    % this for loop divides the overall midi file into parts, as matrices
    % in a cell array (SCORE)
    for n=1:length(midi)
        if n==1
            SCORE{1,1} = midi(n,:);
        elseif midi(n,div)==midi(n-1,div)
            for j=1:length(parts)
                if midi(n,div)==parts(j)
                    SCORE{j,1}=[SCORE{j,1};midi(n,:)];
                    break
                end
            end
        else
            for j=1:length(parts)
                if midi(n,div)==parts(j)
                    SCORE{j,1}=[SCORE{j,1};midi(n,:)];
                    break
                end
            end
        end
    end
    
    % sort parts by their average note numbers, ordering them in parts
    % accordingly (trumpet I has highest note number average, etc.)
    means = zeros(length(SCORE),1);
    for n=1:length(SCORE)
        means(n) = mean(SCORE{n,1}(:,3));
    end    
    sorted_means = sort(means,'descend');

    WHOLE_SCORE = [];
    % append appropriate note ranges for each subscore, create binary
    % matrices for each subscore
    for n=1:length(SCORE)
        if find(sorted_means(1)==mean(SCORE{n,1}(:,3)));
            SCORE{n,2}=notes_1;
        elseif find(sorted_means(2)==mean(SCORE{n,1}(:,3)));
            SCORE{n,2}=notes_2;
        elseif find(sorted_means(3)==mean(SCORE{n,1}(:,3)));
            SCORE{n,2}=notes_3;
        elseif find(sorted_means(4)==mean(SCORE{n,1}(:,3)));
            SCORE{n,2}=notes_4;
        elseif find(sorted_means(5)==mean(SCORE{n,1}(:,3)));
            SCORE{n,2}=notes_5;
        end
        [bm,t,nn] = make_binary_matrix(SCORE{n,1},SCORE{n,2},m);
        % if no notes are on at a given time point, turn into a rest
        for time_point=1:length(bm)
            if sum(bm(:,time_point)) == 0
                bm(end,time_point) = 1;
            end
        end
        WHOLE_SCORE = [WHOLE_SCORE; bm];
    end
    
%     for n=1:length(SCORE)
%         [bm,t,nn] = make_binary_matrix(SCORE{n,1},SCORE{n,2});
%         for time_point=1:length(bm)
%             if sum(bm(:,time_point)) == 0
%                 bm(end,time_point) = 1;
%             end
%         end
%         %SCORE{n,3} = bm;
%         WHOLE_SCORE = [WHOLE_SCORE; bm];
%     end
        
%     WHOLE_SCORE = [];
%     for n=1:length(SCORE)
%         WHOLE_SCORE = [WHOLE_SCORE; SCORE{n,3}];
%     end
    
    %save WHOLE_SCORE as .mat file

%     samps = load('../../data/brassQuintetFeatures.mat');
%     
%     for n=1:length(WHOLE_SCORE)

    [M, M_prime] = A2M(WHOLE_SCORE);

    figure();
    imagesc(WHOLE_SCORE(:,1:end));
%     imagesc(WHOLE_SCORE);
    title('Midi Score in 5 parts');
%     xlabel('Time Domain, in beats');
%     ylabel('Notes');
    xlabel('B (beats)');
    ylabel('V (voices/notes)');
    
    ns = 48000;
    
    A = V*WHOLE_SCORE;
    a = '../data/';
    b = midi_files(index).name;
    c = '_spec.mat';
    d = '_groundtruth.mat';
    save([a,b,c],'A');
    save([a,b,d],'WHOLE_SCORE');

    %A = abs(spectrogram(WHOLE_SCORE(1*ns:2*ns),winsize));
    
    recon =  []; zeros(1,5*ns);    
    for t = 1:size(A,2)
        rphase = exp(1i*2*pi*rand(size(A, 1), 1));
        %recon((t-1)*winsize+(1:winsize)) = ifft([A(:,t); A(end-1:-1:2,t)])';
        R = real(ifft([A(:,t) .* rphase; A(end-1:-1:2,t) .* conj(rphase(end-1:-1:2))])');
        recon = [recon R(1:(end/2))];
    end
        
    soundsc(recon,ns);

end















%     tic;
%     
%     for n = 1:20 %length(midi) % loop through full midi-file data
%         disp(n);
%         on = midi(n,5);
%         off = midi(n,6);
%         duration = off - on;
%         for j = 1:length(parts)
%             if midi(n,1) == parts(j) % confirm that we're on a specific part
%                 
%                 for k = 1:length(time) % iterate through time by sixteenth notes
%                     if k >= length(time)-64  % allow for a 4-bar window for note length at end of song
%                         difference = length(time)-k;
%                         for e = 1:difference % iterate through extension of window up to 4 whole bars, upper bound of note length
%                             interval = [time(k),time(k+e)]; % create interval for this window
%                             if (on >= interval(1)) && (off < interval(2)) % note comes in and goes off within interval
%                                 step = k:sixteenth:k+e-sixteenth; % step = note extension range - last sixteenth beat
%                                 for k2 = 1:length(step) % for loop to extend note as far as needed
%                                     SCORE(midi(n,3),find(time==step(k2)),j) = 1;  
%                                     % assign 1 to specific note (midi(n,3))
%                                     % starting at specific time 
%                                 end
%                             break    
%                             end                    
%                         end
%                         continue
%                     else
%                         for e = 1:64 % 4 whole bars, upper bound of note length
%                             interval = [time(k),time(k+e)];
%                             if (on >= interval(1)) && (off < interval(2)) % note comes in at or just after time k
%                                 step = k:sixteenth:k+e-sixteenth;
%                                 for k2 = 1:length(step) % for loop to extend note as far as needed
%                                     SCORE(midi(n,3),find(time==step(k2)),j) = 1;
%                                 end
%                             break    
%                             end                    
%                         end
%                         continue
%                     end
%                 end
% 
%             end
%             
%         end
% %         if midi(n,1) == midi(n+1,1)
% %             rest = midi(n+1,5)-off;
% %         end
%         
%         
% %         for j = 1:length(parts) % find part j
% %             if midi(n,1) == parts(j)    % determine which part we write to
% %                 for k = 1:length(time)  % iterate over time, broken into
% %                                         % 16th notes
% %                     if midi(n,5) == time(k) % determine whether this part
% %                                             % begins a note at a certain
% %                                             % time, and if so, enter a 1.
% %                         SCORE(k,midi(n,3),j) = 1;
% %                     end
% %                 end
% %             end
% %         end
%     end
%     toc;
%     
%     for k = 1:length(parts)
%         strcat('part_',int2str(k)) = [];
%     end
