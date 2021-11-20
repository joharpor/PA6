%% AI in BME Class - Programming Assignment 6
%   Support Vector Machines Part II
%   Support Vector Machines Part II


%% Initialization
clear ; close all; clc

%% =============== Part 6: Visualizing Dataset 3 ================
%  The following code will load the next dataset into your environment and 
%  plot the data. 
%

fprintf('Loading and Visualizing Data ...\n')

% Load from PA6data3: 
% You will have X, y, Xval, and yval in your environment
load('PA6data3.mat');

% Plot training data
plotData(X, y);

fprintf('Program paused. Press enter to continue.\n');
pause;

%% ========== Part 7: Training SVM with RBF Kernel (Dataset 3) ==========

%  This is a different dataset that you can use to experiment with. Try
%  different values of C and sigma here.
% 

% Try different SVM Parameters here
[C, sigma, minError] = dataset3Params(X, y, Xval, yval);

% Train the SVM
model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
visualizeBoundary(X, y, model);

fprintf(['The minimal error = %f: with C = %f and sigma = %f\n' ...
'Expected minimal error is 0.03\n'], minError, C, sigma);
%test edit


