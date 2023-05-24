% This Code is created by Abdul Shakoor CMS# 280958
% Shakoor.tanoli@yahoo.com

clc;
clear;
close all;

%==========
%Load Data
%==========
run('load_and_norm_data');% to load and normalize input data for data.mat
%============================================================
% User Interactive Selection/Dafaults values  for parameters 
%============================================================
Margin_type=input('Select the margin type,Hard Margin=1,Soft Margin=2 : ');
if Margin_type==1 % Hard Margin 
  Kernal_type=input('Select the Kernal Linear=1,Polynomial =2 : ');
  %C=input('Please Enter the value for C: ');
  %Thresh_hold=input('Please Enter the value for Thresh_hold : ');
   C = 10^6;% default value for C
   Thresh_hold = 0.9;% default value for thresh_hold
   
  if Kernal_type==1 % Linear Kernal
 %p=input('Please Enter the value for p: '); % User Interective p
    p=0;% default p
  end 
  
  if Kernal_type==2 % Polynomial Kernal 
    %p=input('Please Enter the value for p: '); % User Interective p
    p = [2 3 4];% default values for p vector
  end 
end

if Margin_type==2 % Soft Margin
    %Thresh_hold=input('Please Enter the value for Thresh_hold : ');
    %C=input('Please Enter the value for C[C1 C2 C3]: ');
    %p=input('Please Enter the value for p[p1 p1 p3]: ');
    p = [2 3 4];% default values for C vector
    C= [0.1 0.5 1.0];% default values for p vector
    Thresh_hold = 0.9;% default values for Thresh_hold
end 

tic
%==============================================
% Accuracy Calculation for Hard and Soft Margin
%==============================================
if Margin_type==1 % Hard Margin 
    if Kernal_type==1 %  Hard Margin Linear Kernal
    [train_accuracy,test_accuracy] = HMLK_fun(dataTrain,labelTrain,dataTest,labelTest,p,C,Thresh_hold);
    end
    
    if Kernal_type==2 % Hard Margin Polynomial Kernal
    [p_values,train_acc_hmpk,test_acc_hmpk] = HMPK_fun(dataTrain,labelTrain,dataTest,labelTest,p,C,Thresh_hold);
    end  
end
if Margin_type==2% Soft Margin
    [p,C,train_acc_smpk,test_acc_smpk] = SM_fun(dataTrain,labelTrain,dataTest,labelTest,p,C,Thresh_hold);
end 

%========
%Results 
%========
% Hard Margin 
if Margin_type==1 
    
% Hard Margin Linear Kernal
    if Kernal_type==1 
         train_accuracy; 
         test_accuracy;
        Hard_Margin_Linear_Kernal_Accuracy = table(C,p,train_accuracy,test_accuracy)
    end
  
%Hard Margin Polynomial Kernel
    if Kernal_type==2 
        P= p';
        train_acc_hmpk;
        test_acc_hmpk;
        Hard_Margin_Polynomial_Kernal_Accuracy= table(P,train_acc_hmpk,test_acc_hmpk)
    end 
end


% Soft Margin Polynomial kernel
if Margin_type==2
        C=C';
        P= p';
        train_acc_smpk;
        test_acc_smpk;
        %How to read the accuracy value of accuracy table
        fprintf('Please read the result table as follow: \n')
        fprintf('      train_acc_smpk          test_acc_smpk \n')
        fprintf('     C=0.1  C=0.5  C=1.0    C=0.1  C=0.5   C=1.0 \n')    
        fprintf('p=2    1      1      1      0.89   0.91     0.91 \n')
        fprintf('p=3    1      1      1      0.94   0.94     0.94 \n')
        fprintf('p=4    1      1      1      0.91   0.91     0.91 \n')
        Soft_Margin_Polynomial_Kernal_Accuracy = table(P,train_acc_smpk ,test_acc_smpk)
      
end 
toc
