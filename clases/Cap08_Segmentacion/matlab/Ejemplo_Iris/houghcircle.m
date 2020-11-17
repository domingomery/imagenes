function Accumulator = houghcircle(Imbinary,r)
%HOUGHCIRCLE - detects circles with specific radius in a binary image. This
%is just a standard implementaion of Hough transform for circles in order
%to show how this method works.
%
%Comments:
%       Function uses Standard Hough Transform to detect circles in a binary image.
%       According to the Hough Transform for circles, each pixel in image space
%       corresponds to a circle in Hough space and vise versa. 
%       upper left corner of image is the origin of coordinate system.
%
%Arguments:
%       Imbinary - A binary image. Image pixels with value equal to 1 are
%                  candidate pixels for HOUGHCIRCLE function.
%       r        - Radius of the circle.
% Return:
%       Accumulator - The accumulator array in Hough space.
%
%Written by :
%       Amin Sarafraz
%       Computer Vision Online 
%       http://www.computervisiononline.com
%       amin@computervisiononline.com
% https://www.mathworks.com/matlabcentral/fileexchange/4985-circle
% -detection-via-standard-hough-transform?focused=5245801&tab=function

% Acknowledgement: Thanks to CJ Taylor and Peter Bone for their constructive comments
%
%May 5,2004         - Original version
%November 24,2004   - Modified version,faster and better performance (suggested by CJ Taylor)
%Aug 31,2012        - Implemented suggestion by Peter Bone/ Better documentation 
%Nov 20, 2019       -  Adaptada por Vicente Díaz F. / Simplificada (solo acumulador)

%Voting
Accumulator = zeros(size(Imbinary)); % initialize the accumulator
[yIndex, xIndex] = find(Imbinary); % find x,y of edge pixels
numRow = size(Imbinary,1); % number of rows in the binary image
numCol = size(Imbinary,2); % number of columns in the binary image
r2 = r^2; % square of radius, to prevent its calculation in the loop

for cnt = 1:numel(xIndex)
    low=xIndex(cnt)-r;
    high=xIndex(cnt)+r;
    
    if (low<1) % Prevent out of index
        low=1; 
    end
    if (high>numCol) % Prevent out of index
        high=numCol; 
    end
    
    for x0 = low:high
        yOffset = sqrt(r2-(xIndex(cnt)-x0)^2);
        y01 = round(yIndex(cnt)-yOffset);
        y02 = round(yIndex(cnt)+yOffset);
                
        if y01 < numRow && y01 >= 1
            Accumulator(y01,x0) = Accumulator(y01,x0)+1;
        end
        if y02 < numRow && y02 >= 1
            Accumulator(y02,x0) = Accumulator(y02,x0)+1;
        end
    end
end

% END FUNCTION

