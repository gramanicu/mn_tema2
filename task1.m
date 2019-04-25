function A_k = task1(image, k)
  A = double(imread(image));
  [U,S,V] = svd(A);
  Uk = U(:,1:k);
  Sk = S(1:k, 1:k);
  Vk = V'(1:k, :);
  A_k = Uk*Sk*Vk;
end