clear
clc
%% Read the image
image  = rgb2gray(imread('image.jpg'));

%% create 3 * 3 averaging filter
filter = fspecial('average');

%% apply filter to the image
fImage3by3 = imfilter(image, filter);
fImage9by9 = imfilter(image, ones(9, 9) / 81);
fImage10by10 = imfilter(image, ones(10, 10) / 100);

figure
subplot(2, 2, 1);
imshow(image);
title('Original Image');

subplot(2, 2, 2);
imshow(fImage3by3);
title('Image filtered by 3 x 3 averaging filter');

subplot(2, 2, 3);
imshow(fImage9by9);
title('Image filtered by 9 x 9 averaging filter');

subplot(2, 2, 4);
imshow(fImage10by10);
title('Image filtered by 10 x 10 averaging filter');
