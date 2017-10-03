clear all; close all; clc;

% Read an input image
A = imread('binaryImg1.png');

% Convert read image to single channel image
A = rgb2gray(A);

% Generate structuring element for processing
% Thumb rule is to choose the size which is approximately 5% of the image
se = strel('square', 13); 

% Performing complement operations since the object is 0(Black)
% Convention : Object = 1(White), Background = 0(Black)
% Perform image dilation
B_dilated = imerode(A, se);

% Perform image erosion
B_eroded = imdilate(A, se);

% Perform image closing operation
B_close = imopen(A, se);

% Perform image opening operation
B_open = imclose(A, se);

% Display original and processed images
figure, subplot(2, 3, 1), imshow(A), title('Original image');
subplot(2, 3, 2), imshow(B_eroded), title('Original image after Erosion');
subplot(2, 3, 3), imshow(B_dilated), title('Original image after Dilation');
subplot(2, 3, 4), imshow(B_open), title('Original image after Opening');
subplot(2, 3, 5), imshow(B_close), title('Original image after Closing');