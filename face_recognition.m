function[min_dist output_img_index] = face_recognition(image_path,m,A,eigenfaces,pr_img)
  vector = double(rgb2gray(imread(image_path)))(:);
  A = vector - m;
  prTestImg = eigenfaces' * A;
  n = size(pr_img,1);
  dist = zeros(n,1);
  for i = 1:n;
    dist(i) = norm(prTestImg(:) - pr_img(i,:),2);
  endfor
  
  [min_dist, output_img_index] = min(dist);
endfunction