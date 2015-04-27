% Low Pass Filter < 2 kHz
f=fs;
N=33; %change this with your N
omg=0:pi/100:pi;
n=-(N-1)/2:1:(N-1)/2;
n((N-1)/2+1)=0.0000001;
h1=sin(n*0.1*pi)./(n.*pi);
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
% Above code just before (syms z); code enter following (h=conv(h,h);) and re run the code. Compare two graphs.