function [PR,t,nn] = make_binary_matrix(Notes,range,red_midi,vel,ts)
%
% Inputs:
%  Notes: A 'notes' matrix as returned from midiInfo.m
%  vel:   (optional) if vel==1, set value to note velocity instead of 1. (default 0)
%  ts:    (optional) time step of one 'pixel' in seconds (default 0.01)
%
% Outputs:
%  PR:    PR(ni,ti): value at note index ni, time index ti
%  t:     t(ti):  time value in seconds at time index ti
%  nn:    nn(ni): note number at note index ti
%
%   (i.e. t and nn provide 'real-world units' for PR)
%

if nargin < 4
  vel = 0;
end
% if nargin < 3
%   ts = 0.01;
% end
if nargin < 5
%     tempo = 120;
%     ts = 60/(tempo*4);

    [tempos, ~] = getTempoChanges(red_midi);
    ts = tempos(1)/(1000000*8);
%     % create temporal flexibility
%     [tempos, tempos_time] = getTempoChanges(midi);
%     ts = tempos./(1000000*4); % get 16th note beat lengths
%     times = [ts; tempos_time];
    



end


Nnotes = size(Notes,1);

% create note start, note end vectors
for i=1:length(ts)
    
end
n1 = round(Notes(:,5)/ts)+1;
n2 = round(Notes(:,6)/ts)+1;

if vel == 0
  vals = ones(Nnotes,1);
else
  vals = Notes(:,4); % velocity
end

% Notes columns: 
% 1 = track, 2 = channel, 3 = note #, 
% 4 = velocity, 5 = time on, 6 = time off



for i=1:Nnotes
  PR(Notes(i,3), n1(i):n2(i)) = vals(i);
end

if size(PR,1) < 95
    diff = 95-size(PR,1);
    PR = [PR; zeros(diff,size(PR,2))];
end


% notes_1 = [1,48:95];
% notes_2 = [1,48:95];
% notes_3 = [1,36:83];
% notes_4 = [1,36:83];
% notes_5 = [1,24:71];

% create quantized time axis:
t = linspace(0,max(Notes(:,6)),size(PR,2));
% note axis:
range = [range(1), flipdim(range(2:end),2)];
nn = flipdim(range,2);
PR = PR(nn,:);

% % truncate to notes used:
% PR = PR(nn,:);

%[PR,t,nn] = make_binary_matrix(Notes);

% %% display piano-roll:
% % figure;
% imagesc(t,nn,PR);
% axis xy;
% xlabel('time (sec)');
% ylabel('note number');
