function G = IMG06_blur(F,h,noise,dig)
G = conv2(double(F),h,'valid');
if exist('noise','var')
   G = G+noise*randn(size(G));
end
if exist('dig','var')
   G = fix(G+0.5);
end
