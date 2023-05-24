%load and normalize data

%% Load test and  train data
load 'data.mat';% Load dat.mat file from same folder 
%Training and Test Data already separated and labled 
dataTrain;%Train data
labelTrain;%Train label
dataTest;%Test Data
labelTest;% Test Label


%% Normalize data between -1 and 1 
dataTrain = norm(dataTrain);% Normalize Train data
dataTest = norm(dataTest);% Normalize Test data
%% Normalization function
function [ out ] = norm( data )
% Normalization of the data
    tmp_mem = data';% Temporary memory allocation for processing 
    mean_tmp = mean(tmp_mem); % Mean of data
    tmp_mem = bsxfun(@minus, tmp_mem, mean_tmp);%element-wise operation to two array
    tmp_mem = bsxfun(@rdivide, tmp_mem, std(tmp_mem));% element-wise operation to two array
    out = tmp_mem';% To store in out after normalization 
end