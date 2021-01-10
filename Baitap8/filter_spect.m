function filter_spect (H, w)
%%% V ph biên  ca b lc H
%khi bit áp ng tn s H c tính ti các giá tr w tng ng
%%% w: cha chun hoá theo pi
mag= abs(H);
plot(w/pi, H);
xlabel('tan so chuan hoa w/pi');