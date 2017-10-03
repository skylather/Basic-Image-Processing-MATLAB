clear all; close all; clc;

% Read an input image
A = imread('test1.jpg');

% Conversion to single channel image
A = rgb2gray(A);

% Generate Average filter
average_h = fspecial('average', [5 5]);

% Generate Gaussian filter
gaussian_h = fspecial('gaussian', [13 13]);

% Filter input image using average filter
B_average = imfilter(A, average_h);

% Filter input image using Gaussian filter
B_gaussian = imfilter(A, gaussian_h);

% Filter input image using median filter
B_median = medfilt2(A, [9 9]);

% Display input and filtered images side by side
figure, subplot(2, 2, 1), imshow(A), title('Original input image');
subplot(2, 2, 2), imshow(B_average), title('Image filtered using Averaging filter');
subplot(2, 2, 3), imshow(B_gaussian), title('Image filtered using Gaussian filter');
subplot(2, 2, 4), imshow(B_median), title('Image filtered using Median filter');