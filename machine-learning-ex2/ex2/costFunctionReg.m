function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
n = size(X)(2);
n;

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

% calculate cost
[Jcost, gradcost] = costFunction(theta, X, y)
penalty = 0;
for i = 2:n,
	penalty = penalty + theta(i) ^ 2;
end

penalty = penalty * lambda / (2 * m);
Jcost = Jcost + penalty;
J = Jcost;

%calculate gradient
costs = sigmoid(X * theta) - y;

for j = 1:n,
	sum = 0;
	for i = 1:m,
		size(X(i) * theta);
		X(i);
		theta;
		sum = sum + (sigmoid(X(i,:) * theta) - y(i)) * X(i, j);
	end
	if(j > 1)
		sum = sum + lambda * theta(j);
	endif

	sum = sum / m;
	grad(j) = sum;
end





grad

% =============================================================

end
