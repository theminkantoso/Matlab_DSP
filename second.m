clf;
subplot(2,2,1);
n = -10:20;
delta =[zeros(1,10) 1 zeros(1,20)];

stem(n,delta);
xlabel('Thoi gian roi rac n'); ylabel('Bien do');
title('Day xung don vi');
axis([-10 20 0 1.2]);
%bai tap tren slide course\\
subplot(2,2,2);
n0 = 0;
n1 = -5;
n2 = 5;
n = [n1:n2];
x = [(n - n0) == 0]; %n == n0 tra ve 1 => chi co 1 gia tri = 1 giong song delta(n-n0)
stem(n,x); %ve do thi roi rac
subplot(2,2,3);
n = -10:10;
nko1 = 3;
u = [zeros(1,(10 + nko1)) 1 ones(1,(10 - nko1))];
stem(n, u);
subplot(2,2,4);
t = -10:10;
nko2 = 4;
r = [zeros(1,(10 + nko2)) 1:(10 - nko2 + 1)];
plot(t, r);

