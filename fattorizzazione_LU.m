%fattorizzazione di matrice

A = [10, -7, 0; -3, 2, 6;5,-1,5]

for i = 1:n
    for j = 1:i-1
        for k = 1:j-1
            A(i,j) = A(i,j)-A(i,k)*A(k,j)
        end
        A(i,j)= A(i,j)/A(j,j)
    end
    for j = i:n
        for k = 1:i-1
            A(i,j) = A(i,j)-A(i,k)*A(k,j)
        end
    end
end