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
    % if the midi file contains instruments on different channels, as opposed
    % to on different tracks, we need to correct for this...
    if size(parts,1) < 2
        parts = sort(unique(midi(:,2)));
    end

        
    
    % create array of full note range from input midi file - this might be
    % changed to hard-coded ranges for our ultimate chosen instruments
    notes = linspace(min(midi(:,3)),max(midi(:,3)),(max(midi(:,3))-min(midi(:,3)))+1);
    
    
    % create 3-dimensional matrix with notes x time x parts
    SCORE = zeros(length(notes),length(time),length(parts));

%    SCORE = zeros(length(time),length(notes));
    
    tic;    
    
    for n = 1:20 %length(midi) % loop through full midi-file data
        disp(n);
        on = midi(n,5);
        off = midi(n,6);
        duration = off - on;
        for j = 1:length(parts)
            if midi(n,1) == parts(j)
                
                for k = 1:(length(time)-64)
                    for e = 1:64 % 4 whole bars, upper bound of note length
                        interval = [time(k),time(k+e)];
                        if (on >= interval(1)) && (off < interval(2)) % note comes in at or just after time k
                            step = k:sixteenth:k+e-sixteenth;
                            for k2 = 1:length(step) % for loop to extend note as far as needed
                                SCORE(midi(n,3),find(time==step(k2)),j) = 1;
                            end
                        continue    
                        end                    
                    end
                    continue
                end

            end
            
        end
%         if midi(n,1) == midi(n+1,1)
%             rest = midi(n+1,5)-off;
%         end
        
        
%         for j = 1:length(parts) % find part j
%             if midi(n,1) == parts(j)    % determine which part we write to
%                 for k = 1:length(time)  % iterate over time, broken into
%                                         % 16th notes
%                     if midi(n,5) == time(k) % determine whether this part
%                                             % begins a note at a certain
%                                             % time, and if so, enter a 1.
%                         SCORE(k,midi(n,3),j) = 1;
%                     end
%                 end
%             end
%         end
    end
    toc;
    
%     for k = 1:length(parts)
%         strcat('part_',int2str(k)) = [];
%     end

    
end


% break midi file into vectors of notes over time, per track/channel