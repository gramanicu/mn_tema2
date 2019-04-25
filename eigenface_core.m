function[m A eigenfaces pr_img] = eigenface_core(database_path)
  T = zeros(0,0);
  for i = 1:10
    image_path = strcat(database_path,"/",  num2str(i), ".jpg");
    vector = double(rgb2gray(imread(image_path)))(:);
    T = horzcat(T, vector);
  endfor
  m = mean(T,2);
  A = T - m;
  V = eig(A' * A);
  eigenfaces = A * V;
  pr_img = eigenfaces' * A;

endfunction