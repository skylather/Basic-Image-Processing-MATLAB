clear all; close all; clc;

% Read an image
A = imread('lena.jpg');

% Convert the read image to single-channel
A = rgb2gray(A);

% Plot and display the histogram if A is a single channel image with
% default number of bins
figure, imhist(A), title('Histogram of read image');