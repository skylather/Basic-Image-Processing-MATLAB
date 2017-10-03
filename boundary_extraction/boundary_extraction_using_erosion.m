clear all; close all; clc;

% Read an input image
A = imread('binaryImg1.jpg');

% Convert the read image to single channel image
A = rgb2gray(A);

% Generate structuring element for use
se = strel('disk', 5); 

% Perform image erosion
B_eroded = imerode(A, se);

% Subtract the eroded image from original image
B_boundary = A - B_eroded;

% Display images side by side
figure, subplot(1, 3, 1), imshow(A), title('Original image');
subplot(1, 3, 2), imshow(B_eroded), title('Original image after Erosion');
subplot(1, 3, 3), imshow(B_boundary), title('Original image with highlighted binary object boundaries');