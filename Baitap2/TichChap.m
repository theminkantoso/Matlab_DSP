a = [1 2 3 4 1 5 3 2 4 2 4];
na = [-3 -2 -1 0 1 2 3 4 5 6 7];
b = [3 4 2 1 4 5 3];
nb = [-4 -3 -2 -1 0 1 2];
y = conv(a,b); %%% values
n1= na(1) + nb(1);
n2= na(end) + nb(end);
n = n1 : n2;
stem(n,y);
