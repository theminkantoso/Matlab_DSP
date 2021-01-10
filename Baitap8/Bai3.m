n1 = 0:3;
x1 = [2*cos(2*pi*220/8192.*n1)];
n2 = 1:3;
x2 = [0, 2*cos(2*pi*300/8192.*n2)];
n3 = 2:3;
x3 = [0, 0 , 2*cos(2*pi*440/8192.*n3)];
x = x1 + x2 + x3;
n = 0:3;
figure(1);
stem(n,x);
title('tin hieu x ban dau');
noise = randn(4);
y = x + noise(1);
figure(2);
stem(n,y);
title('tin hieu y');
%cau 2 la bo loc chan dai, wc1 = 0.05pi, wc2 = 0.2pi

