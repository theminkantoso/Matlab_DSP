function h = LP_FIR_window(wp, ws, As)
wc = (wp + ws)/2;
khoangchuyentiep = abs(ws- wp);
if(As < 21)
    C = 0.6;
    cuaso = @rectwin;
elseif(As < 44)
    C = 3.21;
    cuaso = @hann;
elseif(As < 53) 
    C = 3.47;
    cuaso = @hamming;
else 
    C = 5.71;
    cuaso = @blackman;
end
L = ceil(2*pi*C/khoangchuyentiep);
if(mod(L,2)==0)
    L = L + 1;
end
win = window(cuaso, L);
hid = ideal_LP (wc, L);
n = (-(L-1)/2) : ((L-1)/2);
h = hid .* win';