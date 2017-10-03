clear all; close all; clc;

% Read an image
A = imread('test1.jpg');

% Convert the image to single-channel intensity image if the read image
% is RGB (3-channel)
A_gray = rgb2gray(A);

% Method for Sobel edge detection
BW_sobel = edge(A_gray, 'sobel');

% Method for Prewitt edge detection
BW_prewitt = edge(A_gray, 'prewitt');

% Method of Canny edge detection
BW_canny = edge(A_gray, 'canny');

% Display the images together
figure, subplot(2, 2, 1), imshow(A_gray), title('Original read image');
subplot(2, 2, 2), imshow(BW_sobel), title('Detected edges using Sobel method');
subplot(2, 2, 3), imshow(BW_prewitt), title('Detected edges using Prewitt method');
subplot(2, 2, 4), imshow(BW_canny), title('Detected edges using Canny method');
