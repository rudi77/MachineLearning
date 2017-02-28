function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% calculate prediction vector: DataMatrix * ParametersVector
h_x = X * theta;

% subtract target value vector
diff = h_x - y;

% calculated squared error
sum_squared_error = (diff' * diff);

% calculate cost function: diff' * diff returns a scalar
J = 1.0 / (2.0 * m) * sum_squared_error;

end
