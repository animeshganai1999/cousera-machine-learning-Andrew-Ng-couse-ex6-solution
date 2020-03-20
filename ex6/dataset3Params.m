function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 0.01; sigma = 0.01;



% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

%====== code to find the perfect value of C and sigma =========

%value = [0.01;0.03;0.1;0.3; 1; 3; 10; 30];
%len = length(value);

%for i=1:len, %value of C
%for j=1:len, %value of sigma

%model= svmTrain(X, y, value(i), @(x1, x2) gaussianKernel(x1, x2, value(j))); 
%predictions(:,(i-1)*len+j) = svmPredict(model, Xval);

%end
%end

%for i=1:length(value)^2,
%error(i) = mean(double(predictions(:,i) ~= yval));
%end

%[min_error ind] = min(error);

%mod1 = mod(ind,len);
%if mod1 == 0,
%mod1 = len;
%end
%sigma = value(mod1);

%mod1 = mod(ind,len);
%if mod1 == 0,
%C = value(floor(ind/len));
%else
%C = value(floor(ind/len) + 1);
%end

% =========================================================================
%after running the above code we got the perfect value for C and sigma

C = 1;
sigma = 0.1;



% =========================================================================

end
