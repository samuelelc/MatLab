% inverse iteration or inverse power method
% from A matrix, p approssimation of a eigenvalue of A
% calculate a better approssimation of eigenvalue

A = [1, 2, 1; 9, 3, 2; 0, 1, 1]     % matrix
p = 6.75;                           % approssimation of eigenvalue
toll = 0.00001;                     % tolerance

fprintf("INITIAL DATA\n" + ...
    "Initial approssimation: %f Tolerance: %f", p, toll)
A

n = length(A);                      % matrix dimension
A = inv(A-p*eye(n));                
oldvector = rand(n,1);              % initialization vector
neweig = toll+1;                    % eigenvalue to the last iteration
oldeig = 0;                         % eigenvalue to the second-last iteration
num_iter = 0;                       % iterations counter - number of iterations

while abs(neweig - oldeig) > toll | num_iter < 2    %termination criterion
    newvector = A*oldvector;
    
    % search a component of oldvector != 0
    index = 1;
    while oldvector(index) == 0
        index = index + 1;
    end
    
    %calculate eigenvalue
    oldeig = neweig;
    neweig = newvector(index)/oldvector(index);

    %refresh iterations counter
    num_iter = num_iter + 1;

    %normalization of vector (optional, to have numbers not too big)
    oldvector = newvector / norm(newvector);


    
end

fprintf("\n\nRESULT\n" + ...
    "Eigenvalue: %f  Calculated difference: %f  Better approssimation: %f   Number of iterations: %d    Tolerance: %f\n", neweig, neweig^-1, p+neweig^-1, num_iter, toll)
