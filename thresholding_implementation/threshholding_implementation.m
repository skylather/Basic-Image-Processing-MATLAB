% In this MATLAB function expects the image to be in the double format.

% Read the image
A = imread('test1.jpg');

% Convert into Grayscale
A_gray = rgb2gray(A);

% Convert into double format
A_gray = im2double(A_gray);

% Output the binary
B_thresh_50 = im2bw(A_gray, 50/255);
B_thresh_100 = im2bw(A_gray, 50/255);
B_thresh_150 = im2bw(A_gray, 150/255);
B_thresh_200 = im2bw(A_gray, 200/255);

%Otsu Algorithm for threshold calculation.

otsu_level = graythresh(A_gray);
B_otsu_thresh = im2bw(A_gray, otsu_level);


% Plot
figure, subplot(2, 3, 1), imshow(A_gray), title('Original image');
subplot(2, 3, 2), imshow(B_otsu_thresh), title('Binary image using Otsu threshold value');
subplot(2, 3, 3), imshow(B_thresh_50), title('Binary image using threshold value = 50');
subplot(2, 3, 4), imshow(B_thresh_100), title('Binary image using threshold value = 100');
subplot(2, 3, 5), imshow(B_thresh_150), title('Binary image using threshold value = 150');
subplot(2, 3, 6), imshow(B_thresh_200), title('Binary image using threshold value = 200');












