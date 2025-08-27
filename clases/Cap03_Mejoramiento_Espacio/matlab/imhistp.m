function imhistp(X)
h = imhist(X);
imhist(X);hold on;bar(h,3)
hold off
