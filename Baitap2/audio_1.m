
[y,Fs] = audioread('audioclip1.wav');
info = audioinfo('audioclip1.wav');
%sound(y,Fs);

t = 0:seconds(1/Fs):seconds(info.Duration);
t = t(1:end-1);
subplot(2,1,1);
plot(t,y)
ydown = downsample(y,3);
%sound(ydown, Fs*1.5);
yfir = fir1(34, 2000 / 16000, 'low', chebwin(35,30));
yt = conv(yfir,ydown); %%%
sound(yt, Fs);
subplot(2,1,2);
plot(yt);

xlabel('Time')
ylabel('Audio Signal')

% y = y(:,1);
% dt = 1/fs;
% t = 0:dt:(length(y)*dt)-dt;
% plot(t,y); xlabel('Seconds'); ylabel('Amplitude');
% figure
% plot(psd(spectrum.periodogram,y,'Fs',fs,'NFFT',length(y)));