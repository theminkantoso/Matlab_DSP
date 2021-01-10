load go.mat;
plot(x);
x_voice = x(1860:5471); %lay khoang co am thanh
L = 320;
m = 60;
[X] = DFTwin(x_voice, L, m, 512);