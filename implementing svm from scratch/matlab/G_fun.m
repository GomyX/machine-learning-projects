%Function for the calculation of g(x)
function [ g ] = G_fun(dataSize, labelTrain, Alpha, b0, K)
%g(x) calculation formula 
g = sum(bsxfun(@times, K, (Alpha .* labelTrain)') , 2) + b0 * ...
                ones(dataSize, 1);
end

