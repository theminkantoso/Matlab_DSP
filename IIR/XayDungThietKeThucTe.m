%CAU 1
fsampling = 8192;
t = 0:1/fsampling:3;
x = sin(2*pi*220.*t);
% stem(t,x);
% stem(t(1:100),x(1:100));
x1 = sin(2*pi*220.*t);
% n2 = 1:3;
x2 = sin(2*pi*300.*t);
x2(1:8192) = 0; %0->1s = 0
% n3 = 2:3;
x3 = sin(2*pi*440.*t);
x3(1:16834) = 0; %0->2s = 0
x = x1 + x2 + x3;
figure(1);
subplot(1,3,1);
stem(x);
title('tin hieu x ban dau');
noise = randn(size(t));
y = x + noise;
subplot(1,3,2);
stem(y);
title('tin hieu y bi nhieu');

%CAU 2
%cau 2 la bo loc chan dai
N = 512;
n = 6;
fc = 300;
fstop = 250; %lam tron tan so cat
fpass = 400; %lam tron tan so thong
% Wc = 2 * fc / fsampling; Normalizing the frequencies
wstop = 2 * fstop / fsampling; %chuan hoa
wp = 2 * fpass / fsampling; %chuan hoa
[b,a]=butter(n,[wstop, wp],'stop'); %Calculation of filter coefficient
ysauloc = filter(b, a, y); %loc 300 Hz khoi y
subplot(1,3,3);
stem(ysauloc);
title('Cau 4: Loc 300 Hz ra');
figure(2);
freqz(b,a,N,fsampling); %Plotting the filter response
title('Cau 3');

%CAU 5
figure(3);
subplot(1,2,1);
X1 = fft(y); %tin hieu trong mien tan so
stem(abs(X1)); %pho bien do tin hieu trong mien tan so
title('Pho bien do y truoc loc');
subplot(1,2,2);
X2 = fft(ysauloc); %tin hieu trong mien tan so
stem(abs(X2)); %pho bien do tin hieu trong mien tan so
title('Pho bien do y sau loc');




