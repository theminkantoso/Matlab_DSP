h1 = LP_FIR_window(0.3*pi, 0.6*pi, 45);
figure(1);
filter_spect_1(h1);
title('wp = 0.3fi, ws = 0.6fi, Rp = 0.5dB, As = 45dB');
h2 = LP_FIR_window(0.2*pi, 0.75*pi, 50);
figure(2);
filter_spect_1(h2);
title('wp = 0.2fi, ws = 0.75fi, Rp = 0.2dB, As = 50dB');
h3 = LP_FIR_window(0.4*pi, 0.6*pi, 60);
figure(3);
filter_spect_1(h3);
title('wp = 0.4fi, ws = 0.6fi, Rp = 0.25dB, As = 60dB');


