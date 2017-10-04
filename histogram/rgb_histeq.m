A = imread('test2.jpg');
A_hsv = rgb2hsv(A);
A_hsv_v = A_hsv(:,:,3);
A_hsv_v = histeq(A_hsv_v);
A_hsv(:,:,3) = A_hsv_v;
A_rgb_hist_eq = hsv2rgb(A_hsv);

subplot(2,2,1), imshow(A), title('Original RGB Image');
subplot(2,2,2), imshow(A_rgb_hist_eq), title('Histogram Equalized');
subplot(2,2,3), imhist(A), title('Histogram of original RGB');
subplot(2,2,4), imhist(A_rgb_hist_eq), title('Histogram of Equalized Image');
