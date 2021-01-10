x = [-1 -2 3 4 2 9];
nx = [-2 -1 0 1 2 3];
h = [1 3 2 1];
nh = [-2 -1 0 1];
y = conv(x,h); %%% values
n1= nx(1) + nh(1);
n2= nx(end) + nh(end);
n = n1 : n2;
subplot(2,2,1)
stem(n,y);
x1 = 1:5;
nx1 = -2:2;
h1 = 6:9;
nh1 = 1:4;
[y1, n1] = sig_conv(x1, nx1, h1, nh1);
subplot(2,2,2)
stem(n1, y1);
u = [zeros(1,10) 1 ones(1,40)];
nx2 = -10:40;
x2 = 0.8 .^ nx2;
h2 = (-0.9) .^ nx2;
nh2 = -10: 40;
[y2, n2] = sig_conv(x2, nx2, h2, nh2);
subplot(2,2,3)
stem(n2, y2);
u = [zeros(1,10) 1 ones(1,40)];
nx2 = -10:40;
x2 = 0.8 .^ nx2 .* u;
h2 = (-0.9) .^ nx2 .* u;
nh2 = -10: 40;
[y2, n2] = sig_conv(x2, nx2, h2, nh2);
subplot(2,2,3)
stem(n2, y2);

u1 = [zeros(1,10 - 1) 1 ones(1, 10+1)] - [zeros(1,10 + 4) 1 ones(1, 10 - 4)];
nx3 = -10:10;
x3 = 0.25 .^ -nx3 .* u1;
h3 = [zeros(1,10) 1 ones(1, 10)] - [zeros(1,10 + 5) 1 ones(1, 10 - 5)];
nh3 = -10:10;
[y3, n3] = sig_conv(x3, nx3, h3, nh3);
subplot(2,2,4)
stem(n3, y3);



