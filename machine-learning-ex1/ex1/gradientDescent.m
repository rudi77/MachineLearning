function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

% stores temp theta values at the beginnig of each new iteration
% updates them at the end of each iteration
theta_temp = zeros( length(theta), 1 );

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    % theta := theta - alpha * 1/m * X' * (X * theta_vec - y)
    theta_temp = theta;
    
    e = X * theta - y;

    theta_temp = theta - alpha/m * (X' * e);
  
    % store new thetas in the theta vector  
    theta = theta_temp;

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
