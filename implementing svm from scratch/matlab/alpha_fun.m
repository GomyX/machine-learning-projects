%Function for the calculation of the alpha
function [ alpha ] = alpha_fun( size_data, desired, K, C )
    %% Initialize inputs for quadatic programming
    H = zeros(size_data, size_data);% initilazion of H matrix with "0"
    for i = 1:size_data
        for j = 1:size_data
            H(i,j) = desired(i) * desired(j) * K(i,j);
        end
    end
    f = -ones(size_data, 1);% initilazition of f matrix with "-1"
    Aeq = desired'; %Transpose 
    Beq = 0; 
    lb = zeros(size_data, 1);% lower limits
    ub = ones(size_data, 1) * C;% uper limits
    x0 = [];
    options = optimset('LargeScale', 'off', 'MaxIter', 1000);
    A = [];
    b = [];
    
    %% Call quadratic programming 
    [ alpha, ~, ~ ] = quadprog(H, f, A, b, Aeq, Beq,lb, ub, x0, options);
end


