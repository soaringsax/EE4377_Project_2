% Now we can apply this FIR low pass filter to our noisy sound and check the result.
sound_filtered=conv(Noisy_file,h); % This is how you apply your impulse response to input
size(sound_filtered) % The convolution changes the number of samples. The Noisy_file has 337920
size(Noisy_file _filtered) % The sound_filtered_has 337952 samples.
sound(Noisy_file,fs); % Listen unfiltered and filtered sounds to see the difference.
sound(sound_filtered,fs);
spectrogram(sound_filtered,512,[],[],fs);colorbar