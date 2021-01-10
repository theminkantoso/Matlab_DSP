x1 = [1 2 3 4 1 5 3 2 4 2 4];
n1 = [-3 -2 -1 0 1 2 3 4 5 6 7];
x2 = [3 4 2 1 4 5 3];
n2 = [-4 -3 -2 -1 0 1 2];
n = min(min(n1),min(n2)) : max(max(n1),max(n2)); %duration of y(n)
y1 = zeros(1,length(n));
y2 = zeros(1,length(n));
y1((n>=min(n1))& (n<=max(n1))==1) = x1;
y2((n>=min(n2)) & (n<=max(n2))==1) = x2;
y = y1 + y2;
subplot(4,1,1);
stem(n,y1);
subplot(4,1,2);
stem(n,y2);
subplot(4,1,3);
stem(n,y);
ynhan = y1 .* y2;
subplot(4,1,4);
stem(n,ynhan);