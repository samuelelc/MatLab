
n = 3
mat = zeros(n)

for i = 1:n
    for j = 1:n
        mat(i,j) = 1/(i+j-1)
    end
end

%si può ottenere anche col comando matlab hilb(n)

%calcola indice di condizionamento di H