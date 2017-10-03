clear all; close all; clc;

% Read a RGB image
A = imread('lena.jpg');

% Verify number of channels
number_of_channels = size(A, 3)

% Convert RGB image to Grayscale
A_gray = rgb2gray(A);

% Display the conversion result
figure, subplot(1, 2, 1), imshow(A), title('Input RGB image');
subplot(1, 2, 2), imshow(A_gray), title('Converted Grayscale image');