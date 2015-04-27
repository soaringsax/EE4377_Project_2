% HIGH PASS FILTER DESIGN (I Will use one of the filter we used in the class):
fs=44100;
N=151;	%change this with your N
omg=0:pi/1000:pi;
n=-(N-1)/2:1:(N-1)/2; n((N-1)/2+1)=0.0000001;
h1=sin(n*0.75*pi)./(n.*pi);
w=0.54+0.46*cos(2*pi*n/(N-1));	% Change it for your window function omg_f0=pi;	
omg_f0=pi; % For High Pass Filter 
c=cos(omg_f0*n);
h=w.*h1.*c; syms z;
h_z=ones(1,length(h));
h_z=h_z*z; 
m=0:1:(length(h)-1); h_z=h_z.^m; h_z=h_z.*h; h_z=sum(h_z);
h_w=subs(h_z,exp(-j*omg)); plot(0.5*fs*omg/(1000*pi),20*log10(abs(h_w))); grid on

