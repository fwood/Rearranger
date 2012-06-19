function [p] = logprobS(S,params)    
% this is the function to determine the log prob for S given the params   

% alpha = params.alpha;
% beta = params.beta;
% gamma = params.gamma;
% delta = params.delta;

B = size(S,2); % # of beats    
M = params.M*ones(1,B);
M_prime = params.M_prime*ones(1,B);

% M = params.M;
% M_prime = params.M_prime;
% M_bin = params.M_bin*ones(1,B);

s1 = -params.alpha * sum(sum(S.*M));
s2 = -params.beta * sum(sum(diff(S, [], 2) .^2));
s3 = params.gamma * sum(S(:).*S(:));
% s3 = gamma * sum(sum(S.*M_bin));
s4 = -params.delta * sum(sum(S.*M_prime));

%% Calculate cumulative score for harmony parameters

intervals = harmony(S);
% each harmonic interval within an octave range generates a score
sum_intervals = zeros(12,1);
for i=1:12
    sum_intervals(i) = sum(intervals(i,:));
end
harms = params.harms; % call harmony parameter vector

s5 = sum(-harms .* sum_intervals);

% s5 = -params.U * sum(intervals(1,:));
% s6 = -params.m2 * sum(intervals(2,:));
% s7 = -params.M2 * sum(intervals(3,:));
% s8 = -params.m3 * sum(intervals(4,:));
% s9 = -params.M3 * sum(intervals(5,:));
% s10 = -params.P4 * sum(intervals(6,:));
% s11 = -params.TT * sum(intervals(7,:));
% s12 = -params.P5 * sum(intervals(8,:));
% s13 = -params.m6 * sum(intervals(9,:));
% s14 = -params.M6 * sum(intervals(10,:));
% s15 = -params.m7 * sum(intervals(11,:));
% s16 = -params.M7 * sum(intervals(12,:));

%sum(intervals*params.harms)
%% Calculate cumulative score for note_movement parameters

jumps = note_movement(S);
s6 = sum(-params.jumps .* jumps);

%%
p = (s1+s2+s3+s4+s5+s6);
% p = s3;
end


% epsilon = params.epsilon;
% 
% part1 = S(1:49,:);
% part2 = S(50:98,:);
% part3 = S(99:147,:);
% part4 = S(148:196,:);
% part5 = S(197:245,:);
% [V,B] = size(part1,1);
% 
% 
% s5 = -epsilon * 