clear
clc
%% Read the image
image  = rgb2gray(imread('image.jpg'));

%% using imrotate(imageMatrix, degree)

figure
subplot(2, 2, 1);
imshow(image);
title('Original Image');

subplot(2, 2, 2);
imshow(imrotate(image, 45));
title('Rotate by 45 degree');

subplot(2, 2, 3);
imshow(imrotate(image, 90));
title('Rotate by 90 degree');