clf;
n = 0:100;
a=[1 2 0 1]; 
b=[1 -0.5 0.25 0]; 
h=impz(a,b,n); 
subplot(2,2,1);
stem(n,h); 
u = [zeros(1,0) 1 ones(1,100)];
x1 = 5+3*cos(0.2*3.14*n)+4*sin(0.6*3.14*n);
x1 = x1 .* n;
[y2,n2] = sig_conv(h,n,x1,n);
subplot(2,2,2);
stem(n2,y2);
subplot(2,2,3);
zplane(b,a);
grid;
title('Gian do');

