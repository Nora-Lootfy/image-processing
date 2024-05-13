% For  every 3×3 block of the image (without overlapping), replace  all
% corresponding 9 pixels by their average. This operation simulates  
% reducing the image spatial resolution. Repeat this for 5×5  blocks 
% and 7×7 blocks. If you are using Matlab, investigate  simple command
% lines to do this important operation.

clear
clc

%% Read the image
image  = rgb2gray(imread('image.jpg'));

%% compress the image 
compressed3by3Image = compressImage(image, 3);
compressed5by5Image = compressImage(image, 5);
compressed7by7Image = compressImage(image, 7);

%% show image
figure
subplot(2, 2, 1);
imshow(image);
title('Original Image');

subplot(2, 2, 2);
imshow(compressed3by3Image);
title('Compressed by 3x3 average filter');

subplot(2, 2, 3);
imshow(compressed5by5Image);
title('Compressed by 5x5 average filter');

subplot(2, 2, 4);
imshow(compressed7by7Image);
title('Compressed by 7x7 average filter');