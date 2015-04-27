X_audio=fft(file_mono);	% FFT of the audio file
X_Nos1=fft(Nos1);	% FFT of the first noise
f=((-length(X_audio)/2):1:(length(X_audio)/2-1))*(fs/length(X_audio));	% [-fs/2, fs/2] range 
plot(f/1000,fftshift(abs(X_audio)/max(abs(X_audio))))	% Plot of first FFT (normalized) 
hold on
plot(f/1000,fftshift(abs(X_Nos1)/max(abs(X_Nos1))),'r')	% Plot of second FFT (normalized)
X_Nos2=fft(Nos2);
figure(2)
plot(f/1000,fftshift(abs(X_Nos2)/max(abs(X_Nos2))),'r')	%Plot of second FFT (normalized)The second noise has high DC value and wide spectrum. I will stop low frequency values. This will create second	noise	as	high	frequency noise


