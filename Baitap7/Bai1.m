%load go.mat;
% who;
fs = 8000;
% plot(x);
%(2590 - 2525) / fs; % khoang cach giua 2 dinh (peak) 2 mau lien tiep => khoang
%cach / fs => lam bang tay, o duoi co lenh loc de code lam ho
% sound(x, fs);
load go1.mat;
who;
sound(x, fs);
plot(x);
findpeaks(x, 'MinPeakProminence', 0.6, 'MinpeakDistance', 50);
[p, loc] = findpeaks(x, 'MinPeakProminence', 0.6); %0.6 la gia tri min, lay tu 0.6 tro len
% MinPeakProminence: khoang cach tu dinh cuc den day cuc
% MinPeakDistance: khoang cach toi thieu giua 2 dinh
% MinPeakHeight: do rong toi thieu cua dinh
% =>cac filter loc cho ham findpeaks
%plot(x);

loc(2) - loc(1);
(loc(2)-loc(1))/fs
(loc(14)-loc(1))/13/fs
