function filter_spect (H, w)
%%% V ph bi�n  ca b lc H
%khi bit �p ng tn s H c t�nh ti c�c gi� tr w tng ng
%%% w: cha chun ho� theo pi
mag= abs(H);
plot(w/pi, H);
xlabel('tan so chuan hoa w/pi');