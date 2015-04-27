[file_no_noise,fs]=wavread('project.wav');	%loads	test.wav	file	as	vector	(file_no_noise)	and sampling frequency fs.
size(file_no_noise)	%this will show the size of the sound file. If you see this file has two columns (stereo has two channels). We just need one. I will only get one of the channels. fs is 44100 Hz (most recording will be sampled this value).
sound(file_no_noise,fs)	%This will play the audio file based on fs.
file_mono=file_no_noise(:,1);	%This will only take one channel.
sound(file_mono,fs)	%There is almost no difference. For voice stereo or mono are almost same. That is one reason most of talk shows are AM stations.
Nos1=cos(2*pi*3*fs/40*(0:length(file_mono)-1)/fs)'; %Create the first noise (what is the frequency of the signal).
sound(Nos1,fs)	%Listen the noise you have just generated.
figure (1)
subplot 211	%We can plot sound and noise using spectrogram. It will be.
spectrogram(Nos1,512,[],[],fs);colorbar	%time vs frequency plot. It is useful to see the
subplot 212	%frequencies.
spectrogram(file_mono,512,[],[],fs);colorbar
figure (2)	%The second figure for to see magnitude vs time for sound
subplot 211	%and noise.
plot(file_mono) 
subplot 212 
plot(Nos1)
Nos2=rand(1,length(file_mono));	%Create a second noise. This is now a noise with wide range
sound(Nos2,fs)	%of frequencies. Play and plot this noise. You will see its
figure (3)	%frequency values.
subplot 211 
plot(Nos2) 
subplot 212
spectrogram(Nos2,512,[],[],fs);
