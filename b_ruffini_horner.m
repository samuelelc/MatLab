% valutare un polinomio a(x) in un punto x0 con l'algoritmo di
% Ruffini-Horner
%
% p(x) = a0 + a1*x + a2*x^2 + ... + an*x^n = ((x + anmeno1)x + anmeno2)x +
% anmeno3) ... )x + a0

a = [5, 5, 2, 1]    %a(x) = 5 + 5x + 2x^2 + x^3
x0 = 3

res = a(length(a));
for i = length(a)-1:-1:1
    res = res * x0;
    res = res + a(i);
end

res

