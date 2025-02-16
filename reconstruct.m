im=imread(uigetfile()); 
a=rgb2gray(im);
b=zeros(size(a));
im1=bitset(b,8,bitget(a,8));
im2=bitset(im1,7,bitget(a,7));
im3=bitset(im2,6,bitget(a,6));
im4=bitset(im3,5,bitget(a,5));
im5=bitset(im4,4,bitget(a,4));
subplot(2,3,1);imshow(a);title('Original');
subplot(2,3,2);imshow(uint8(im1));title('8 only');
subplot(2,3,3);imshow(uint8(im2));title('8 and 7');
subplot(2,3,4);imshow(uint8(im3));title('8, 7, 6');
subplot(2,3,5);imshow(uint8(im4));title('8, 7, 6, 5');
subplot(2,3,6);imshow(uint8(im5));title('8, 7, 6, 5, 4');