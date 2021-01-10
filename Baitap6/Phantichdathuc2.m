%%% Cho da thuc. Hay phan tich no thanh tich cua 
%%% cac da thuc thanh phan, co bac <=2

%%%A(z) = a0 + a1 z^-1 + a2 ^z^-2 +...aN z^-N

%%%==> input [a0,a1,a2....aN]

%%%(H11 + H12 z^-1 + H13 z^-2)(H21 + H22 z^-1 + H23 z^-2)...
%%% output: matrix H : m x3

function H= Phantichdathuc2(A)
p=cplxpair(roots(A));
%%%neu tong so nghiem la so le, them nghiem =0, 
%%%de ghep cap 
if (mod(length(p),2)==1)
    p(length(p)+1) =0;
end
sothanhphan = length(p)/2;
% khoi tao 1 matran de luu he so:
H= zeros (sothanhphan,3); % da thuc bac 2 luon co 3 he so 
count=1;
for i = 1:2:length(p) % do chung ta nhom cap 1-2, 3-4
    %H(1,:) =[a1,a2,a3] <=> H(1,1)= a1, H(1,2)= a2, H(1,3)= a3
    H(count,:)= poly([p(i), p(i+1)]);
    count=count+1;
end

    


