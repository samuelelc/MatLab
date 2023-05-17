mat = zeros(5)

for i = 1:5
    for j = 1:5
        mat[i][j] = 1/(i+j-1)
    end
end
