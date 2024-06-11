clear
close all
clc

image = imread('image.jpg');

adjustImage(image, 2, 2, '2: contrast, 2: brightness')

adjustImage(image, -2, 0.5, '0.5: contrast, -2: brightness')

adjustImage(image, -20, 2, '2: contrast, -5: brightness')