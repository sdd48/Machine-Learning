function g = sigmoid(z)
%SIGMOID Summary of this function goes here
%   Detailed explanation goes here
g = (ones(size(z))+exp(-z)).^-1;

end

