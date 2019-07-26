% Example:
%
% Display of a horse using Computer Graphics
%
% Computer Vision Course
% (c) Domingo Mery (2014) - http://dmery.ing.puc.cl


load horse % 3D data: Courtesy of Ivan Sipiran
                   % horse.data is matlab/data directory
close all
trisurf(T',M(1,:),M(2,:),M(3,:));
axis equal;
enterpause
trisurf(T',M(1,:),M(2,:),M(3,:),'FaceColor','b','EdgeColor','none');
axis equal;
enterpause
alpha 0.8;
camlight;
enterpause
camlight(-80,-10);
enterpause
lighting p;
enterpause
view(3);
enterpause
axis off
grid off