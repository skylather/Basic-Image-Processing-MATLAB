clear all; close all; clc;

% Read an input image
A = imread('test1.jpg');

% Generate Gaussian and Average filters
h_gaussian = fspecial('gaussian');
h_average = fspecial('average');

% Filter input image using generated Gaussian and Average filters
B_gaussian = imfilter(A, h_gaussian);
B_average = imfilter(A, h_average);

% Filter input image using Median filter
% Median filtering function takes as input grayscale image
A_gray = rgb2gray(A);
B_median = medfilt2(A_gray);

% Display original and filtered images side-by-side for comparing the
% result of image de-noising
figure, subplot(2, 2, 1), imshow(A), title('Original image with Salt & Pepper noise');
subplot(2, 2, 2), imshow(B_gaussian), title('Input image filtered using Gaussian filter');
subplot(2, 2, 3), imshow(B_average), title('Input image filtered using Average filter');
subplot(2, 2, 4), imshow(B_median), title('Input image filtered using Median filter');
