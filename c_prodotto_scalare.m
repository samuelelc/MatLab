%input: x, y, n
n = 3
x = [1, 3, 12]
y = [3, 4, 5]
res  = 0
for i = 1:n 
    res = res + x(i)*y(i)
end