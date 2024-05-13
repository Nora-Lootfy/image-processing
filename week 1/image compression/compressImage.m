function image = compressImage(originalImage, compressBy) 

imageSize = size(originalImage);
image = zeros(floor(imageSize(1)/compressBy), floor(imageSize(2)/compressBy)); 

for i = 1: compressBy: imageSize(1) - (compressBy - 1) 
    for j = 1: compressBy: imageSize(2) - (compressBy - 1)
      image((i + (compressBy - 1))/compressBy, (j + (compressBy - 1))/compressBy) = ...
        mean( ...
            mean( ...
                originalImage(i:i+(compressBy - 1) , j:j+(compressBy - 1)) ...
            ) ...
        );  
    end
end

image = uint8(image);

end