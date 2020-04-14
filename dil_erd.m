im = imread(uigetfile);
img = rgb2gray(im);
lev = graythresh(img);
bw1 = im2bw(img,lev);
bw = imbinarize(img);
se1 = strel('square', 5);
dil = imdilate(bw1, se1);
dil2 = imdilate(bw, se1);
erd = imerode(bw1, se1);
erd2 = imerode(bw, se1);
diff_dil = dil - bw1;
diff_dil2 = dil - bw;
%disp('Difference using im2bw on dilation=');
%disp(diff_dil);
%disp('Difference using imbinarize on dilation=');
%disp(diff_dil2);
diff_erd = bw1 - erd;
diff_erd2 = bw - erd2;
%disp('Difference using im2bw on erotion=');
%disp(diff_erd);
%disp('Difference using imbinarize on erotion=');
%disp(diff_erd2);
subplot(4,3,1); imshow(im); title('Original Image');
subplot(4,3,2); imshow(img); title('Original Gray Image');
subplot(4,3,3); imshow(diff_dil); title('Dilated Boundary im2bw');
subplot(4,3,4); imshow(bw1); title('Using Im2bw');
subplot(4,3,5); imshow(bw); title('Using Imbinarize');
subplot(4,3,6); imshow(diff_dil2); title('Dilated Boundary imbinarize');
subplot(4,3,7); imshow(dil); title('Dilated on im2bw');
subplot(4,3,8); imshow(dil2); title('Dilated on imbinarize');
subplot(4,3,9); imshow(diff_erd); title('Eroded Boundary im2bw');
subplot(4,3,10); imshow(erd); title('Eroded on im2bw');
subplot(4,3,11); imshow(erd2); title('Eroded on imbinarize');
subplot(4,3,12); imshow(diff_erd2); title('Eroded Boundary imbinarize');