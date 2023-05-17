% power method or power iteration, to find the greatest eigenvalue

A = 1.0e+03 * [1.2520,    0.8000,    0.4960;
    3.3120,    2.1160,    1.3120;
    0.5760,    0.3680,    0.2280];  %input matrix
toll = 0.00001;                     % calculation tolerance 

fprintf("INITIAL DATA\n" + ...
    "Tolerance: %f", toll) 
A

dim = length(A);    % matrix dimension
vold = rand(dim,1); % vector to the second-last iteration
vnew = zeros(1,2);  % vector to the last iteration

aold = 0;           % eigenvalue to the second-last iteration
anew = 0;           % eigenvalue to the last iteration

num_iter = 0;       % iterations counter - number of iterations

while num_iter < 2 | abs(anew-aold)>toll     %termination criterion
    vnew = A * vold;

    % search a component of oldvector != 0
    index = 1;
    while vold(index) == 0
        index = index + 1;
    end

    %calculate eigenvalue
    anew = vnew(index)/vold(index);

    %refresh iterations counter
    num_iter = num_iter + 1;

    %normalization of vector (optional, to have numbers not too big)
    vold = vnew / norm(vnew);
   
    aold = anew;
end

fprintf("\n\nRESULT\nEigenvalue: %f Number of iterations: %d    Tolerance: %f\n", anew, num_iter, toll)