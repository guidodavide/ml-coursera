function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% we are using X as design matrix: m x n+1
% theta is a n+1 x 1 vector
% y is a mx1 vector
hypo = X * theta;       % hypothesis : mx1 vector
errors = (hypo - y).^2; % squared

J = 1/(2*m) * sum(errors);


% =========================================================================

end
