function plotData(X, y)
% PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with o for the positive examples
%   and x for the negative examples. X is assumed to be a mx2 matrix.
%
%  y expected to be 1 or 0

% Find Indices of Positive and Negative Examples
pos = find(y == 1); neg = find(y == 0);

% Plot Examples
plot(X(pos, 1), X(pos, 2), 'go','MarkerFaceColor', 'g','MarkerSize', 9)
hold on;
plot(X(neg, 1), X(neg, 2), 'rx', 'LineWidth', 2, 'MarkerSize', 9)
hold off;

end
