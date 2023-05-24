%% Hard margin SVM with a polynomial kernel
function [p,train_acc_HMPK,test_acc_HMPK] = HMPK_fun(dataTrain,labelTrain,dataTest,labelTest,p,C,Thresh_hold);

train_acc_HMPK = zeros(length(p), 1);% memory allocation to store train accuracy
test_acc_HMPK = zeros(length(p), 1);% memory allocation to store test accuracy

%% calculations for the every element of "p" vector
for i = 1:length(p)  
    %% Calculation for the Kernel for training data
    K = kernel_fun(dataTrain, dataTrain, p(i));
    %% Calculate for the alpha
    size_data = length(dataTrain(1,:));
    Alpha = alpha_fun(size_data, labelTrain, K, C);
    %% Calculation for b
    b = b0_fun(labelTrain, Alpha, K, C, Thresh_hold);
    %% Calculate g(x) for training data
    gx_train = G_fun(size_data, labelTrain,Alpha, b, K);
    train_acc_HMPK(i) = mean(sign(gx_train) == labelTrain);%Train Accuracy
    %% Calculation of  the Kernel for test set
    K = kernel_fun(dataTest, dataTrain, p(i));
    %% Calculate g(x) for test data
    size_data = length(dataTest(1,:));
    gx_test = G_fun(size_data, labelTrain, Alpha, b, K);
    test_acc_HMPK(i) = mean(sign(gx_test) == labelTest);%Test accuracy 
end


