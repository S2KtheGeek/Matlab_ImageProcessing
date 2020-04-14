im = imread(uigetfile);
img = rgb2gray(im);
bw = imbinarize(img);
se = strel('square', 5);
erd = imerode(bw, se);
dil = imdilate(bw, se);
opn = imdilate(erd, se);
clo = imerode(dil, se);
subplot(4,2,1); imshow(im); title('Original Image');
subplot(4,2,2); imshow(img); title('Original Gray Image');
subplot(4,2,3); imshow(bw); title('Binary Image');
subplot(4,2,5); imshow(dil); title('Dilated Image');
subplot(4,2,6); imshow(erd); title('Eroded Image');
subplot(4,2,7); imshow(opn); title('Opening of an Image');
subplot(4,2,8); imshow(clo); title('Closing of an Image');
