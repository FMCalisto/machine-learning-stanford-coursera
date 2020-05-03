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

%The vector of hypothesis
hypo = X * theta;

%Subtract the true y from the predicted y
diff = hypo - y;

%Square all the residuals
sqResid = diff.^2;

%Sum all the squared residuals
sqSum = sum(sqResid);

%return the resulting sum multiplied by (1/2m)
J = (1 / (2 * m)) * sqSum;

J



% =========================================================================

end
