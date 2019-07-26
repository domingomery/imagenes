% Example:
%
% Multiplication of an image by a constant
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl


load clown

ii = (1:256)'/256;
mp = [ii ii ii];
figure(1)
imshow(X,mp)
axis on

figure(2)

imhist(X/256)
[N,M] = size(X);

while(1)
    
    k = input('k? ');
    Y = fix(k*X)+1;
    
    ii = find(Y>256);
    
    if ~isempty(ii)
        Y(ii) = 256*ones(size(ii,1),1);
        disp('satured')
    end

    h = zeros(256,1);
    for i=1:N
       for j=1:N
           h(Y(i,j)) = h(Y(i,j)) + 1;
       end
   end

   figure(3)
   plot(h)
   
   figure(4)
   imshow(Y,mp)
end
