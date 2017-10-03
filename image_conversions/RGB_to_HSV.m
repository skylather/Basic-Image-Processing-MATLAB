clear all; close all; clc;

% Read a RGB image
A = imread('lena.jpg');

% Extract individual R, G & B channels from RGB image
R = A(:, :, 1);
G = A(:, :, 2);
B = A(:, :, 3);

% Convert RGB image to HSV color space
A_hsv = rgb2hsv(A);

% Extract individual H, S & V channels from HSV image
H = A_hsv(:, :, 1);
S = A_hsv(:, :, 2);
V = A_hsv(:, :, 3);

% Display the read RGB image and HSV converted image
figure, subplot(1, 2, 1), imshow(A), title('Read RGB image');
subplot(1, 2, 2), imshow(A_hsv), title('Converted HSV image');

% Displaying individual image channels.
figure, subplot(1, 3, 1), imshow(R), title('Red channel');
subplot(1, 3, 2), imshow(H), title('Hue channel');
subplot(1, 3, 3), imshow(V), title('Value channel');