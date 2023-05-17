%risolvi il sistema lineare costituito da una matrice incompleta
%triangolare

A = [[1,5,2];[0,4,6];[0,0,3]]
b = [9,1,7]
n = length(b)
x = zeros(1,n)
x(n)=b(n)/A(n,n)
for i = n-1:-1:1
    x(i)=b(i)
    for k = i+1:n
        x(i)=x(i)-A(i,k)*x(k)
    end
    x(i)=x(i)/A(i,i)
end
