function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

% Change value of theta0
% Pretty brutal, set theta0 to 0
thetaTemp = theta;
thetaTemp(1,1) = 0;

[originalC, originalG] = costFunction(theta, X, y);

J =  originalC + ((lambda / (2 * m)) * sum(thetaTemp.^2));

grad = originalG + lambda / m * thetaTemp;


% =============================================================

end
