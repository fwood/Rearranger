% one specific midi file example, needs to be expanded to whole directory
% midi = midiInfo(readmidi('beethoven-ludwig-van-fuge-opus-137-5630.midi'));
% parts = unique(midi(:,1));  % break midi file into parts


midi_files = dir('*ppets.mid');

tempo = 120; % arbitrary bpm set
sixteenth = 60 / (tempo*4);


for i = 1:length(midi_files)
    clear SCORE;
    filename = midi_files(i).name;
    midi = sortrows(midiInfo(readmidi(filename)),1);
    %time = linspace(min(midi(:,5)),max(midi(:,6)));
    %time = sort(unique([midi(:,5);midi(:,6)]));
    %time = sort(unique(midi(:,5)));
    time = 0:sixteenth:max(midi(:,6));
    parts = sort(unique(midi(:,1)));
    div = 1;
    % if the midi file contains instruments on different channels, as opposed
    % to on different tracks, we need to correct for this...
    if size(parts,1) < 2
        parts = sort(unique(midi(:,2)));
        div = 2;
    end

        
    
    % create array of full note range from input midi file - this might be
    % changed to hard-coded ranges for our ultimate chosen instruments
    notes = linspace(min(midi(:,3)),max(midi(:,3)),(max(midi(:,3))-min(midi(:,3)))+1);

    % 4-octave note ranges for each of the five brass instruments, plus a rest holder:
    % 1) trumpet I, 2) trumpet II, 3) french horn, 4) trombone, 5) tuba
    notes_1 = [1,48:96];
    notes_2 = [1,48:96];
    notes_3 = [1,36:84];
    notes_4 = [1,36:84];
    notes_5 = [1,24:72];
    
    
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

    % append appropriate note ranges for each subscore
    for n=1:length(SCORE)
        if find(means(1)==mean(SCORE{n,1}(:,3)));
            SCORE{n,2}=notes_1;
        elseif find(means(2)==mean(SCORE{n,1}(:,3)));
            SCORE{n,2}=notes_2;
        elseif find(means(3)==mean(SCORE{n,1}(:,3)));
            SCORE{n,2}=notes_3;
        elseif find(means(4)==mean(SCORE{n,1}(:,3)));
            SCORE{n,2}=notes_4;
        elseif find(means(5)==mean(SCORE{n,1}(:,3)));
            SCORE{n,2}=notes_5;
        end
    end
    
    for n=1:length(SCORE)
        [bm,t,nn] = make_binary_matrix(SCORE{n,1},SCORE{n,2});
        for time_point=1:length(bm)
            if sum(bm(:,time_point)) == 0
                bm(end,time_point) = 1;
            end
        end
        SCORE{n,3} = bm;
    end
        
    WHOLE_SCORE = [];
    for n=1:length(SCORE)
        WHOLE_SCORE = [WHOLE_SCORE; SCORE{n,3}];
    end
    
    %save WHOLE_SCORE as .mat file
    
    
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

% break midi file into vectors of notes over time, per track/channel