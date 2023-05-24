function [ K ] = kernel_fun(data_input, dataTrain, p)
%Calculation function for Kernel
    M = length(data_input(1,:));% To calculate the length of train data
    N = length(dataTrain(1,:));% To calculate the length of test data
    K = zeros(M, N);% Creation of K matrix of "0" with M rows and N columns
    for i = 1:M
        for j = 1:N
            if p == 0 % Decision operator for linear kernel(if p=0);
                K(i,j) = data_input(:,i)' * dataTrain(:,j);
            else % Decision oeratior polynomial kernel(if p with some values)
                K(i,j) = (data_input(:,i)' * dataTrain(:,j) + 1)^p; 
            end
        end
    end

end

