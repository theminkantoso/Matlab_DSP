L = 51;
wc = pi/5; %tan so cat
hid = ideal_LP (wc, L);
win = window(@rectwin, L);
h = hid .* win';
filter_spect_1 (hid);
hold on;
filter_spect_1 (h);