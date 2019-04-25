function[min_dist output_img_index] = face_recognition(image_path,m,A,eigenfaces,pr_img)
  vector = double(rgb2gray(imread(image_path)))(:);
  A = vector - m;
  prTestImg = eigenfaces' * A;
  
  
 
endfunction