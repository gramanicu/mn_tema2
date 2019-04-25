function [A_k S] = task3(image, k)
  A = double(imread(image));
  m = rows(A);
  n = columns(A);
  
  % This is the implementation of the algorithm from the homework 
  % documentation
  mu = mean(A,2);
  A = bsxfun(@minus, A, mu);
  Z = A' / sqrt(1/n);
  [U,S,V] = svd(Z, k);
  Z = U*S*V';
  W = V(:, 1:k);
  Y = W'*A;
  A_k = W * Y + mu;
  
endfunction