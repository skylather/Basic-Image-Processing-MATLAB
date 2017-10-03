close all; clear all; clc;

% Read an input image
A = imread('binaryImg1.jpg');

% Convert to single channel
A = rgb2gray(A);

% Generate structuring element for use
se = strel('disk', 15); 

% Perform image erosion
B_eroded = imerode(A, se);

% Perform image dilation
B_dilated = imdilate(A, se);

% Display the images side-by-side for comparison
figure, subplot(1, 3, 1), imshow(A), title('Original read image');
subplot(1, 3, 2), imshow(B_eroded), title('Original image after Erosion');
subplot(1, 3, 3), imshow(B_dilated), title('Original image after Dilation');