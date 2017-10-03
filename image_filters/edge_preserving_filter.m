clear all; close all; clc;

% Read an image
A = imread('test1.jpg');

% Filter the image using guided filter
A_guided_filtered = imguidedfilter(A);

% Display original and processed image side-by-side
imshowpair(A, A_guided_filtered, 'montage');