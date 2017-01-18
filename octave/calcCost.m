function [cost] = calcCost(theta, X, y, lambda)

% Your code goes here.
cost = 0
[m, n] = size(X)
cost = (X' * y) .^ 2 + lambda * (theta .^ 2)
cost = cost / (2 * m)
for i=1 : m,
  % cost = cost + (X(i)' * theta - y(i)) ^ 2 + lambda * sum(theta .^ 2)
  % cost = cost / (2 * m)
end
endfunction