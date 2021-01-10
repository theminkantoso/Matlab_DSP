function h = HP_FIR_window(Fp, Fs, Fsampling, As)
%Chuan hoa
wp = 2*pi*Fp/ Fsampling; 
ws = 2*pi*Fs/ Fsampling; 
wc = (wp + ws)/2;
khoangchuyentiep = abs(ws- wp);
%chon cua so
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
%Tinh L, lam tron len
L = ceil(2*pi*C/khoangchuyentiep);
if(mod(L,2)==0)
    L = L + 1;
end
win = window(cuaso, L);
hid = ideal_LP (wc, L);
n = (-(L-1)/2) : ((L-1)/2);
%lowpass
hLP = hid .* win';
%chuyen sang highpass
hHP = (1).^n .* hLP;
h = hHP;