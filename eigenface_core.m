function[m A eigenfaces pr_img] = eigenface_core(database_path)
  T = zeros(0,0);
  
  % Read images as column vectors, and add the columns to the T matrix
  for i = 1:10
    image_path = strcat(database_path,"/",  num2str(i), ".jpg");
    vector = double(rgb2gray(imread(image_path)))(:);
    T = horzcat(T, vector);
  endfor
  
  m = mean(T,2);     % mean of every line
  A = T - m;         % substract the mean
  [V,D] = eig(A' * A);
  eigval = diag(D);
  
  realIndex = 0;
  for i = 1:10
    realIndex = realIndex + 1;
    if(eigval(i)<=1)
      V(:,realIndex) = [];
      realIndex = realIndex - 1;
    endif
  endfor
  
  eigenfaces = A * V;
  pr_img = eigenfaces' * A;

endfunction