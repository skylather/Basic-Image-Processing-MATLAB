clear all; close all; clc;

%% Read an input image
A = imread('lena.jpg');

%% Add various types of noise to read input image
% 1. Gaussian noise
B_gaussian = imnoise(A, 'gaussian');

% 2. Speckle noise
B_speckle = imnoise(A, 'speckle');

% 3. Salt & Pepper noise
B_saltpepper = imnoise(A, 'salt & pepper');

%% Display the images side-by-side for comparison
figure, subplot(2, 2, 1), imshow(A), title('Original read image');
subplot(2, 2, 2), imshow(B_gaussian), title('Original image with added Gaussian noise');
subplot(2, 2, 3), imshow(B_speckle), title('Original image with added Speckle noise');
subplot(2, 2, 4), imshow(B_saltpepper), title('Original image with added Salt & Pepper noise');