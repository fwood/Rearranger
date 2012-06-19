function f = midi2freq(m)
% f = midi2freq(m)
%     
% Convert MIDI note number (m=0-127) to 
% frequency, f,  in Hz
% (m can also be a vector or matrix)
%

f = (440/32)*2.^((m-9)/12);