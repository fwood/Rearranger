function S = MRFSampler(S,params,sweeps)

% p = logprobS(S,params);
% ps = zeros(1,sweeps);

for i=1:sweeps
    for j = 1:1000
        ind_on = fix(length(S(:))*rand(1,1)+1); % generate 1 random number to flip
        [R,C] = ind2sub(size(S),ind_on);
        % find where the random on note is within a part...
        part = ceil(R/49);
        part_pitch = find(S((part-1)*49+1:(part*49),C)==1);
        % determine row # in score that this corresponds to
        group_pitch = (part-1)*49 + part_pitch;
        % find index of note being turned off
        ind_off = sub2ind(size(S),group_pitch,C);
        % if ind_on and ind_off are the same, nudge ind_on so that they are
        % different
        if ind_on == ind_off
            if part_pitch == 49
                ind_on = ind_on - 1;
            else
                ind_on = ind_on + 1;
            end
        end
        % create index vector of off_note and on_note
        inds = [ind_off, ind_on];

%         % zero out all values of part containing randomized note
%         S((part-1)*49+1:(part*49),column)=zeros(49,1); 
%         % turn on the randomized note
%         S(ind_on)=1;
        
        d = logprobSdiff(S,params,inds); % return difference between original and mod/flipped score    
        u = rand(1);
        if log(u) < d
            S(inds) = 1-S(inds);
%             p = p + d;
        end
    end


%     for j = 1:numel(S)
%         d = logprobSdiff(S,params,j); % return difference between original and mod/flipped score
%         u = rand(1);
%         if log(u) < d
%             S(j) = 1-S(j);
%             p = p + d;
%         end
% %         ps(i) = p;
%     end

%     if mod(i,2) == 0
% %         figure(1);
%         subplot(1,2,1);
%         plot(1:i,ps(1:i));
%         drawnow;
% %         figure(2);
%         subplot(1,2,2);
%         imagesc(S);
%         drawnow;
%     end 
end
end