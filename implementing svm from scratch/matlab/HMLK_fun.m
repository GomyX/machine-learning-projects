%% Hard margin with linear kernel
function [train_acccuracy,test_accuracy] = HMLK_fun(dataTrain,labelTrain,dataTest,labelTest,p,C,Thresh_hold);
%% Calculation of the Kernel for training data
K = kernel_fun(dataTrain, dataTrain, p);
%% Calculation of the Alpha
size_data = length(dataTrain(1,:));
Alpha = alpha_fun(size_data, labelTrain, K, C);
%% Calculation of b
b = b0_fun(labelTrain, Alpha, K, C, Thresh_hold);
%% Calculation of g(x) for training data
gx_train = G_fun(size_data, labelTrain, Alpha, b, K);
train_acccuracy = mean(sign(gx_train) == labelTrain);% Train Accuracy
%% Calculation of the Kernel for test set
K = kernel_fun(dataTest, dataTrain, p);
size_data = length(dataTest(1,:));
%% Calculate g(x) for test data
gx_test = G_fun(size_data, labelTrain, Alpha, b, K);
test_accuracy = mean(sign(gx_test) == labelTest);% Test Accuracy