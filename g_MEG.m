%MEG senza pivoting

A = [2, 3, 5; 6, 1, 4; 0, 1, 1]
B = [2, 1, 0]
n = length(A)

for k = 1:n
    for i = k+1:n
        m = A(i,k)/A(k,k)
        B(i) = B(i)-m*B(k)
        for j = k+1:n
            A(i,j)= A(i,j)-m*A(k,j)
        end
    end
end