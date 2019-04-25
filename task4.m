function [A_k S] = task4(image, k)
  A = double(imread(image));
  m = rows(A);
  n = columns(A);
  
  % This is the implementation of the algorithm from the homework 
  % documentation
  mu = mean(A,2);
  A = bsxfun(@minus, A, mu);
  
  Z = zeros(m,m);
  Z = (A * A') / (n-1);
  [V S] = eig(Z);
  V = fliplr(V);
  W = V(:, 1:k);
  
  Y = W'*A;
  A_k = W * Y + mu;
endfunction