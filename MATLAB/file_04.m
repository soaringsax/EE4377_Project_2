Nos2_filtered=conv(Nos2,h);	% This is the output of the noise file with the filter above is applied.
size(Nos2)	% The convolution changes the number of samples. The Nos2 has 337920 but
size(Nos2_filtered)	% The Nos2_filtered has 338070 samples. 
sound(Nos2_filtered,fs);	% Listen unfiltered and filtered noises to see the diffrence. 
sound(Nos2,fs);



