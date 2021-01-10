fo1=1000;%Freqyency of sin 
fs=10000;%Sampling Frequency Fs>2Fm 
fo2=10300;%Freqyency of sin 
fo3=10700;%Freqyency of sin 
fo4=11100;%Freqyency of sin 
fo5=11500;%Freqyency of sin 
n=0:1:30;

x1=sin(2*pi*fo1*n/fs);
x2=sin(2*pi*fo2*n/fs);
x3=sin(2*pi*fo3*n/fs);
x4=sin(2*pi*fo4*n/fs);
x5=sin(2*pi*fo5*n/fs);
%x1=cos(2*pi*f0*n/fs2); 
subplot(3,2,1);
stem(n,x1);
subplot(3,2,2); 
stem(n,x2);
subplot(3,2,3); 
stem(n,x3);
subplot(3,2,4); 
stem(n,x4);
subplot(3,2,5); 
stem(n,x5);
