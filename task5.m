function task5(image)
   %% Initializations
   A = double(imread(image));
   m = rows(A);
   n = columns(A);
   maxSize = min(200, min(n,m));
   
   
   %% First Plot
   [A_k S] = task3(image, maxSize);
   sv = diag(S);
   k = [1:maxSize];
   figure(1);
   plot(k, sv);
   
   %% Second Plot
   info = zeros(maxSize,1);
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
     A_k = task3(image, i);
     error(i) = sum(sumsq(A - A_k)) / (m * n);   
   endfor 
   figure(3);
   plot(k, error);
   
    %% Fourth Plot
   compression = zeros(maxSize);
   for i = 1:maxSize
     compression(i) = (2*i + 1)/n;
   endfor 
   
   figure(4);
   plot(k, compression);
end