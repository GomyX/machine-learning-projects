%Calculation of Soft margin SVM with polynomial kernel
function [p,C,train_acc_smpk,test_acc_smpk] = SM(dataTrain,labelTrain,dataTest,labelTest,p,C,Thresh_hold);
%%Memory Allocation to store Accuracy values
train_acc_smpk = zeros(length(p), length(C));
test_acc_smpk = zeros(length(p), length(C));

%% Calculations for every element of p vector
for i = 1:length(p)
    for j = 1:length(C)
        %% Calculation of the  "Kernel" for training data
        K = kernel_fun(dataTrain, dataTrain, p(i));

        %% Calculation for "alpha" 
        dataSize = length(dataTrain(1,:));
        Alpha = alpha_fun(dataSize, labelTrain, K, C(j));

        %% Calculation for "b"
        b = b0_fun(labelTrain, Alpha, K, C(j), Thresh_hold);

        %% Calculate g(x) for training data
        train_g = G_fun(dataSize, labelTrain,Alpha, b, K);
        train_acc_smpk(i,j) = mean(sign(train_g) == labelTrain);
        
        %% Calculation of the Kernel for test set
        K = kernel_fun(dataTest, dataTrain, p(i));
        
        %% Calculation of g(x) for test data
        dataSize = length(dataTest(1,:));
        test_g = G_fun(dataSize, labelTrain, Alpha, b, K);
        test_acc_smpk(i,j) = mean(sign(test_g) == labelTest);
    end
end


