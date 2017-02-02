function [J, grad] = costFunction(theta, X, Y, lambda)
%regressionCost: Summary of this function goes here
%   
% X = 
% [x0 x1 ... xn]
% [x0 x1 ... xn]
% (one row for each training example, dimentions m*(n+1);
% 



m = size(X,1); %number of training examples
J = 0;
grad = zeros(size(theta));


J = (1/(2*m))*sum((X*theta - Y).^2) + (lambda/(2*m))*(theta(2:end)'*theta(2:end));

oldGrad = X'*(X*theta - Y);

grad(0) = oldGrad(0);
grad(2:end) = oldGrad(2:end) + (lambda/m)*theta(2:end);




end

