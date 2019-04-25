function A_k = task1(image, k)
  A = double(imread(image));
  [U,S,V] = svds(A, k);
  A_k = U*S*V';
end