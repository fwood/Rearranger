function[S2] = remove_double_notes(S)
% removes all notes played simultaneously except for one (arbitrarily, the
% highest-pitched one), keeping the max number of notes per part to 1.

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

end