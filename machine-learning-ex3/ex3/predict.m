function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);
m;
num_labels;

% You need to return the following variables correctly 
p = zeros(m, 1);
X1 = [ones(m, 1) X];
size(X1);
size(Theta1);
size(Theta2);

X2 = X1 * Theta1';
X3 = [ones(m, 1) sigmoid(X2)];
size(X3);
X4 = sigmoid(X3 * Theta2');
size(X4);
[a, p] = max(X4, [], 2);


% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%









% =========================================================================


end
