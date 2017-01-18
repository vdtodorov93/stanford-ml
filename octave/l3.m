clear ; close all; clc

theta = [1, 1, 1, 1];
X = [1, 2, 3; 4, 5, 6; 7, 8, 9];
X = [[1;1;1] X];
[n, m] = size(X)
y = [2; 3; 4];
lambda = 0.5;
cost = sum(((X * theta' - y) .^ 2) + sum(lambda * (theta .^ 2))) / (2 * m)



% calcCost(theta, X, y, lambda)