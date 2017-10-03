A = imread('test1.jpg');

%converting into grayscale
A_gray = rgb2gray(A);

%histogram equalization of A_gray
A_histeq = histeq(A_gray);

%plots
subplot(2,2,1), imshow(A_gray), title('Gray Image of Original');
subplot(2,2,2), imshow(A_histeq), title('Histogram Equalized Image');
subplot(2,2,3), imhist(A_gray), title('Histogram of A_gray');
subplot(2,2,4), imhist(A_histeq), title('Histogram of HE Image');
