function h_ideal = ideal_LP (wc,L)
% L phai la so le?
L= round(L); % tranh truong hop nhap L la so thap phan
if(mod(L,2) ==0 ) % neu L chan
L =L+1;
end
n = -(L-1)/2 : (L-1)/2; % m l� s nguy�n
n = n + eps;
% cng th�m eps=0.0000001  tr�nh chia cho 0
h_ideal = sin(wc*n)./(pi*n);