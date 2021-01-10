%1.CUA SO
As = -20*log(0.005/(1+0.005)); % ta co sigmaS = 0.005 => As = 46.06 => Cua so Hamming As = 53
h = HP_FIR_window(1750, 1500, 5000, As);
% Ta co wp = 7*pi/10, ws = 3*pi/5
%Suy ra delta w = pi/10, wc = (ws+wc)/2 = 13*pi/20;
%C = 3.47 => L = 2*pi*C/delta w = 69.4 => Lam tron len 71
%su dung cac tham so tren => cua so fdatool: 'CuaSoFdatoolBai2.fda'

%2.LAY MAU TIN HIEU
%tin hieu ban dau
t= -15:15; %time interval
x=sin(3800*pi.*t)+2*cos(6000*pi.*t); % = cos(3800*pi.*t - pi/2)+2*cos(6000*pi.*t)
figure(1)
subplot(2,1,1);
plot(t,x,'g');
title('Tin hieu lien tuc');

%lay mau tin hieu voi fs = 5000Hz
fs=5000; %Sampling Frequency Fs<2*Fmax = 2*3000 = 6000
n = -15:15; %time interval
xn= cos(3800*pi/fs.*n - pi/2)+2*cos(6000*pi/fs.*n);
subplot(2,1,2);
stem(t, xn,'r');
title('Tin hieu lay mau');

%3. CHO QUA BO LOC
figure(2);
%Export cua so fdatool 
%Den: mau so cua so
%Num: tu so cua so
y = filter(Num,Den,xn); %tin hieu qua bo loc
stem(t,xn);
hold on
stem(t,y); 
legend('Tin hieu truoc khi loc','Tin hieu sau khi loc');
title('Tin hieu truoc va sau khi loc');

%4. PHO BIEN DO TIN HIEU RA
figure(3);
X = fft(y); %tin hieu trong mien tan so
stem(abs(y)); %pho bien do tin hieu trong mien tan so
title('Pho bien do');

%FREQZ LA VE DO THI DAP UNG h(n)
%FILTER LA TRA LAI DAU RA Y(n) KHI BIET DAU VAO X(n)

