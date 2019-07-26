function e = error_res(th,G,h,N)

F    = zeros(N,N);
F(:) = th;
Hf   = conv2(F,h,'valid');
e    = 1e6*norm(Hf(:)-G(:))+norm(th(:));
fprintf('err = %f\n',e)
