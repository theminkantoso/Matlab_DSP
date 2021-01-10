
fs=5;%Sampling Frequency Fs>2Fm 
n=0:1:30;
subplot(2,1,1);
x1= cos(2*pi*n/fs)+ cos(8*pi*n/fs)+ cos(12*pi*n/fs);
stem(n,x1,'r');
subplot(2,1,2);
x2=3*cos(2*pi*n/fs);
stem(n,x2,'g');
legend('One','Two');