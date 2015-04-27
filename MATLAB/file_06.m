% Now we can filter noise from the file and get the message. We know that noise mostly high frequency and that
% cause problem. The original message frequency looks less than 2000 Hz. We will design a low pass filter that
% passes frequencies less than 5000 and later we will change that frequency. After that we will increase the %
% order of filter for better response (cascade couple of times to increase stop band response).
[Noisy_file,fs]=wavread('Noisy_file_1.wav'); % Open the file noise. This File is the one we created in step 1.
sound(Noisy_file,fs) % Now play the sound. This is really noisy.
sound(Noisy_file,2*fs)  % Play the sound by changing sampling frequency.
sound(Noisy_file,10*fs) % Explain what happened.
sound(Noisy_file,20*fs)
sound(Noisy_file,fs,4)  % change bits. What happened?
sound(Noisy_file,fs,2)
sound(Noisy_file,fs,16)
% Low Pass Filter < 5 kHz
f=fs;
N=33; %change this with your N
omg=0:pi/100:pi;
n=-(N-1)/2:1:(N-1)/2;
n((N-1)/2+1)=0.0000001;
h1=sin(n*0.250*pi)./(n.*pi);
w=0.5+0.5*cos(2*pi*n/(N-1)); % Change it for your window function
h=h1.*w;
syms z;
h_z=ones(1,length(h));
h_z=h_z*z;
m=0:1:(length(h)-1);
h_z=h_z.^m;
h_z=h_z.*h;
h_z=sum(h_z);
h_w=subs(h_z,exp(-j*omg));
plot(0.5*f*omg/pi,20*log10(abs(h_w))); grid on





