%ham truyen he thong
b=[1/24 -1/12 -1/24 1/12]; %tu so
a=[1 -7/12 -1/24 1/24]; %mau so
isstable(b,a)
zplane(b,a);
title('Gian do diem cuc diem khong');
%he thong on dinh
%cac diem cuc nam trong vong tron |z| = 1 => on dinh
%ngoai ra he so isstable = 1 => on dinh

%he so he thong toi uu NOI TIEP
tuSoPhanTich = Phantichdathuc(b) 
% tuSoPhanTich =
% 
%     1.0000   -0.0000   -1.0000
%     1.0000   -2.0000         0
% phan tich tu so thanh tich bac 2
% 1/24-1/12*z^(-1)-1/24*z^(-2)+1/12*z^(-3) 
% = (1-z^(-2))*(1-2*z^(-1))
    
mauSoPhanTich = Phantichdathuc(a)
% mauSoPhanTich =
% 
%     1.0000   -0.1379    0.0578
%     1.0000    0.7212         0
% phan tich mau so thanh tich bac 2
% 1-7/12*z^(-1)-1/24*z^(-2)-1/24*z^(-3) 
% = (1-0.1379*z^(-1)+0.0578*z^(-2))*(1-0.7212*z^(-1))

%phan tich he thong toi uu SONG SONG
[R,P,K] = residuez(b,a)
% R =
%
%   -0.1114 + 0.0000i
%   -0.9235 + 0.1317i
%   -0.9235 - 0.1317i
%
% P =
%
%   -0.7212 + 0.0000i
%    0.0689 + 0.2303i
%    0.0689 - 0.2303i
%
% K =
%
%      2
% Ket qua phan tich: 
% (-0.1114 + 0.0000i)/(1-(0.7212 + 0.0000i)*z^(-1))
% + (-0.9235 + 0.1317i)/(1-(0.0689 + 0.2303i)*z^(-1))
% + (-0.9235 - 0.1317i)/(1-(0.0689 - 0.2303i)*z^(-1)) + 2;
