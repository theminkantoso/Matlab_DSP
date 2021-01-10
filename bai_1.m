f0=1000;%Freqyency of sin 
fs1=10000;%Sampling Frequency Fs>2Fm 
fs2=1500;%Sampling Frequency Fs

n=0:1:30;

x=cos(2*pi*f0*n/fs1);

x1=cos(2*pi*f0*n/fs2); 

% figure (Hinh2) 

subplot(2,1,1) 

plot(n,x)%Show Continuous Signal

subplot(2,1,2)%Chia phan the hien trong 

hold on 

plot(n,x)

stem(n,x,'r') %r - red - mau sac - mau do

plot(n,x1,'g') %g - green - mau sac - mau xanh

legend('Original function','Sampling With Fs>2Fm','Sampling With Fs<2Fm')
