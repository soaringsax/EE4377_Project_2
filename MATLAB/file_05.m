%If you want to change the cutoff frequency to 10 kHz or other values you need to change your ?1 to proper
%value.(Try the same exercise and make the filter filters 10 kHz and lower)
%Now finally I can create our noisy audio.
Nos2_filtered= Nos2_filtered(1:337920);	%Adjust the filtered noise size (changed due convolution)
Noisy_Audio=file_mono+Nos2'+Nos1;	%Add file and noise all together.
sound(Noisy_Audio,fs)	%Listen to sound with noise.
spectrogram(Noisy_Audio,512,[],[],fs);colorbar	%See the noisy Audio. You may realize the where the problem
wavwrite(Noisy_Audio,fs,32,'Noisy_file_1.wav')	% Save file as .wav file. You can use this file later.
sound(Noisy_Audio,fs)




