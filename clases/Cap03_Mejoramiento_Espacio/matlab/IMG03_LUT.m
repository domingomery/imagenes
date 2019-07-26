% Example:
%
% Look up Table
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl

load clown
T = 256*ones(256,1);
T(1:81) = (1:81).*(1:81)/81^2*255; % look up table


Y = Bim_LUT(X,T,1);