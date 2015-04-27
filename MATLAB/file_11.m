% Now apply the filter again with a better filtering response
sound_filtered1=conv(Noisy_file,h); % This is how you apply your impulse response to input
size(sound_filtered1) % The convolution changes the number of samples. The Noisy_file has 337920
size(Noisy_file) % The sound_filtered_has 337952 samples.
sound(Noisy_file,fs); % Listen unfiltered and filtered sounds to see the difference.
sound(sound_filtered1,fs);
spectrogram(sound_filtered1,512,[],[],fs);colorbar