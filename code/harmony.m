function [intervals] = harmony(S)
% returns a 12xB matrix of harmonic interval frequencies from a score S
[~,B] = size(S);

part1 = S(1:49,:);
part2 = S(50:98,:);
part3 = S(99:147,:);
part4 = S(148:196,:);
part5 = S(197:245,:);

parts = [part1, part2, part3, part4, part5];
BB = size(parts,2);
% remove all notes played simultaneously except for one (arbitrarily, the
% highest-pitched one).
for i=1:BB
    if sum(parts(:,i)) > 1
        doubles = find(parts(:,i)==1);
        doubles = doubles(2:end);
        for j=1:length(doubles);
            parts(doubles(j),i) = 0;
        end
    end
end
S2 = [parts(:,1:B); parts(:,B+1:2*B); parts(:,2*B+1:3*B); ...
    parts(:,3*B+1:4*B); parts(:,4*B+1:5*B)];

F1 = reshape(find(S2),5,B) - 245*ones(5,1)*((1:B)-1) - 49*(0:4)'*ones(1,B);
F2 = zeros(1,B); % initialize matrix to hold harmony intervals

for i=1:4
    for j=(i+1):5
        if (i==49)||(j==49)
            F2 = [F2; 49]; % effectively remove rests from interval matrix
        else
            F2 = [F2; mod(abs(F1(i,:)-F1(j,:)),12)];
            % create matrix based on intervals (within the octave)
        end
    end
end
F2 = F2(2:end,:); % chop off top (superfluous) row

% create matrix of interval frequencies
intervals = zeros(12,B);
for b=1:B
    for int=1:12
        intervals(int,b) = sum(F2(:,b)==int); % find # of each type of interval
    end
end

end