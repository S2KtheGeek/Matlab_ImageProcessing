I = imread(uigetfile);
A=rgb2gray(I);
B=255-A;
fil = 1/9 * ones(3,3);
imfil = uint8(filter2(fil,A));
subplot(2,2,1);imshow(A);title('Original Image');
subplot(2,2,2);imshow(B);title('Negative of Original Image');
subplot(2,2,3);imshow(A);title('Original Image');
subplot(2,2,4);imshow(imfil);title('3*3 avg filtered');
