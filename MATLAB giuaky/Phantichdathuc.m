function [HS] = Phantichdathuc(A)
% A=[a0, a1, a2, ...] vector he so da thuc a0 + a1z^-1 + a2z^-2 + ...
%     HS = ma tran cap he so ket qua
%     HS = [m1 n1 p1
%     m2 n2 p2
%     ...
%     mk nk pk]
poles = roots(A);
poles = cplxpair(poles);
N = length(poles);
if mod(N, 2) == 0
    number_items = N/2;
else 
    number_items = floor(N/2) + 1;
    poles(N+1) = 0;
end

HS = zeros(number_items, 3);
count = 1;
for i=1:2:N
    HS(count,:) = poly([poles(i), poles(i+1)]);
    count = count + 1;
end