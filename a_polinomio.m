%valutare un polinomio a(x) in un punto x0

a = [5, 5, 2, 1]    %a(x) = 5 + 5x + 2x^2 + x^3
x0 = 3
res = 0
for index = 0:(length(a)-1)
    res = res + a(index+1)*x0^index
end

