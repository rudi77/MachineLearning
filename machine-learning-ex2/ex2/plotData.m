function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

% admitted
pos = find (y == 1);
% positve exam 1 score
posX1 = X(pos, 1);
% positive exam 2 score
posX2 = X(pos, 2);

% not admitted
neg = find (y == 0);
% negative exam 1 score
negX1 = X(neg, 1);
% negative exam 2 score
negX2 = X(neg, 2);

plot(posX1, posX2, 'k+', 'LineWidth', 2, 'MarkerSize', 7);
plot(negX1, negX2, 'ko', 'MarkerFaceColor', 'r', 'MarkerSize', 7);

%xlabel( 'Exam 1 Score' );
%ylabel( 'Exam 2 Score' );

%legend( 'Admitted', 'Not admitted' )

% =========================================================================



hold off;

end
