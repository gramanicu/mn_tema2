function task2(image)
   %% Initializations
   A = double(imread(image));
   m = rows(A);
   n = columns(A);
   maxSize = min(200, min(n,m));
   
   %% First Plot
   sv = svds(A, maxSize);
   k = [1:maxSize];
   
   figure(1);
   plot(k, sv);
   
   %% Second Plot
   info = zeros(maxSize, 1);
   bot = sum(sv);
   
   for i = 1:maxSize
    sum = 0;
    for j = 1:i
      sum = sum + sv(j);
    endfor
    info(i) = sum / bot;
   endfor
   clear sum;
   
   figure(2);
   plot(k, info);
   
   
   %% Third Plot
   error = zeros(maxSize);
   for i = 1:maxSize
     A_k = task1(image, i);
     error(i) = sum(sumsq(A - A_k)) / (m * n);   
   endfor 
   
   figure(3);
   plot(k, error);
   
   %% Fourth Plot
   compression = zeros(maxSize,1);
   for i = 1:maxSize
     compression(i) = (m*i + n*i + i) / (m*n);
   endfor 
   
   figure(4);
   plot(k, compression);
       
end