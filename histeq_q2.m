img = imread(uigetfile);
imgray = rgb2gray(img);
histo = imhist(imgray);
hist_equi = histeq(imgray);
subplot(2,2,1);imshow(imgray);title('Oringinal Image');
subplot(2,2,2);imhist(imgray);title('Histogram of the Image');
subplot(2,2,3);imshow(hist_equi);title('Histogram Equilized Image');
subplot(2,2,4);imhist(hist_equi);title('Histogram of Equilized Image');
