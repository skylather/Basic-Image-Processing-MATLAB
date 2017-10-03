clear all; close all; clc;

% Read an image
A = imread('test1.jpg');

% Sharpen read image with different amount
B_sharp1 = imsharpen(A, 'Amount', 0.8);
B_sharp2 = imsharpen(A, 'Amount', 1.0);
B_sharp3 = imsharpen(A, 'Amount', 1.2);

% Display the images side-by-side
figure, subplot(2, 2, 1), imshow(A), title('Original image');
subplot(2, 2, 2), imshow(B_sharp1), title('Sharpened image: Amount 0.5');
subplot(2, 2, 3), imshow(B_sharp2), title('Sharpened image: Amount 1.0');
subplot(2, 2, 4), imshow(B_sharp3), title('Sharpened image: Amount 1.5');