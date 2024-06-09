% It is used to reduce image intensity of the image from 256 to levels
%   
% Input:
%   grayScaleImage: image matrix in gray scale 2d array with 256 level
%   intensity
%   levels: number of levels to reduce intensity to "must be a power of 2
%   less than 256
%
% Output:
%   image: matrix of 2d image after reducing intensity 
function image = reduceImageIntensity(grayScaleImage, levels)
    if( ...
        levels <= 0 || ...
        levels >= 256 || ...
        levels ~= pow2(floor(log2(levels)))...
    )
        error('Invalid intensity level');
    end
    
    factor =  256 / levels;
    
    
    image = floor(grayScaleImage / factor ) * factor;
end