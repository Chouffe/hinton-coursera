function predictions = predict(W1, W2, X)

Z1 = X * W1
A1 = 1 ./ (1 + e .^ - Z1);
Z2 = A2 * W2
predictions = Z2

endfunction
