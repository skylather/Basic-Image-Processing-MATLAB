clear all; close all; clc;

% Read an input image
A = imread('binaryImg1.jpg');

% Convert the read image to single channel image
A = rgb2gray(A);

% Generate structuring element for use
se = strel('disk', 5); 

% Perform image dilation
% To get the object boundary, subtract the original image from the dilated
% version of the orginal image
B_dilated = imdilate(A, se);

% Subtract the original image from dilated image
B_boundary = B_dilated - A;

% Display images side by side
figure, subplot(1, 3, 1), imshow(A), title('Original image');
subplot(1, 3, 2), imshow(B_dilated), title('Original image after Dilation');
subplot(1, 3, 3), imshow(B_boundary), title('Original image with highlighted binary object boundaries');