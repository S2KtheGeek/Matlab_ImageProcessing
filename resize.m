im=imread('Penguins.jpg');
im1=rgb2gray(im);
im3=imresize(im1,[500,500]);
im4=imresize(im1,0.5,'nearest');
imwrite(im4,'im4.jpg');
imwrite(im1,'im1.jpg');
subplot(2,2,4);
imshow(im4);
subplot(2,2,1);
imshow(im);
subplot(2,2,2);
imshow(im1);
subplot(2,2,3);
imshow(im3);

