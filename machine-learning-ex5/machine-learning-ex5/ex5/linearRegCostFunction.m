function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

h = X*theta;
cost = sum((h-y).*(h-y));
cost = cost/(2*m);
cost2 = sum(theta.*theta);
cost2 = cost2 - theta(1,1)*theta(1,1);
cost2 = cost2*lambda/(2*m);

J = cost + cost2;

for i = 1:length(theta)
    grad(i) = (sum((h-y).*X(:, i)))/m;
    if i~=1
        grad(i) = grad(i) + (lambda/m)*theta(i);
    end
end

% =========================================================================

grad = grad(:);

end
