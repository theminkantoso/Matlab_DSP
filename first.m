a = 15:65;
b = 0:2:38;
M = rand(10);
for i = 1:10
    M(i,i) = 1;
end
N = rand(10);
for i = 1:10
    N(i,i) = 0;
end
a = max(M(:));
b = min(N(:));
subplot(2,2,1);
x = -10:1:10;
y = power(x,2);
plot(x,y);
subplot(2,2,2);
a = -2:pi/12:2;
b = sin(0.2*pi*a);
plot(a,b);
subplot(2,2,3);
c = -10:1:10;
d = exp(c);
plot(c,d); %plot =>ve do thi lien tuc

