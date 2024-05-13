clear
clc

image = rgb2gray(imread('image.jpg'));
levels = [128, 64, 32, 16, 8, 4, 2];

figure('Name', 'Intensity Levels Comparison', 'NumberTitle', 'off');

subplot(3, 3, 1);
imshow(image);
title('Original Image');

for i = 1:numel(levels)
    subplot(3, 3, i+1);
    reducedImage = reduceImageIntensity(image, levels(i));
    imshow(reducedImage);
    title(sprintf('Image with %d intensity level', levels(i)));
end
