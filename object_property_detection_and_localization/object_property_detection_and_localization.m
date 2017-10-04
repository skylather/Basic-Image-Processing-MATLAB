clear all; close all; clc;

% Read an input image
A = imread('ball1.jpg');

% We have to subtract the red component from the grayscale image to 
% extract the red components in the image.
B_diff = imsubtract(A(:,:,1), rgb2gray(A));

% Use a median filter to filter out noise
B_diff = medfilt2(B_diff, [3 3]);

% Convert the resulting grayscale image into a binary image.
B_diff = im2bw(B_diff, 0.18);
    
% Remove all those pixels less than 300px
B_diff = bwareaopen(B_diff, 300);
    
% Label all the connected components in the image.
bw = bwlabel(B_diff, 8);
    
% Here we do the image blob analysis.
% We get a set of properties for each labeled region.
stats = regionprops(bw, 'BoundingBox', 'Centroid');
    
% Display the image
figure, imshow(A), title('Original image with red balls coordinates');
    
hold on
%This is a loop to bound the red objects in a rectangular box.
for object = 1:length(stats)
    bb = stats(object).BoundingBox;
    bc = stats(object).Centroid;
    rectangle('Position',bb,'EdgeColor','r','LineWidth',2)
    plot(bc(1),bc(2), '-m+')
    a = text(bc(1)+15,bc(2), strcat('X: ', num2str(round(bc(1))), '    Y: ', num2str(round(bc(2)))));
    set(a, 'FontName', 'Arial', 'FontWeight', 'bold', 'FontSize', 12, 'Color', 'green');
end
hold off