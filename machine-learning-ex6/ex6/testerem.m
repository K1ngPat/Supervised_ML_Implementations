clear ; close all; clc


load('ex6data3.mat');
C = 1
sigma = 0.1
model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));

pred = svmPredict(model, Xval);

score = mean(double(pred==yval));

score*=100

