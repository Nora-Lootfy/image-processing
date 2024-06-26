clear
close all
clc

% read image
image = imread('image.jpg');

% apply function to it
adjustImage(image, 2, 2, '2: contrast, 2: brightness')

adjustImage(image, -2, 0.5, '0.5: contrast, -2: brightness')

adjustImage(image, -20, 2, '2: contrast, -5: brightness')