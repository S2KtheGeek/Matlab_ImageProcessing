im=imread(uigetfile); 
a=rgb2gray(im);
subplot(3,3,1);imshow(a);title('Original');
b=bitget(a,1);subplot(3,3,2);imshow(logical(b));title('Bit plane 1');  
b=bitget(a,2);subplot(3,3,3);imshow(logical(b));title('Bit plane 2'); 
b=bitget(a,3);subplot(3,3,4); imshow(logical(b));title('Bit plane 3');  
b=bitget(a,4);subplot(3,3,5);imshow(logical(b));title('Bit plane 4'); 
b=bitget(a,5);subplot(3,3,6);imshow(logical(b));title('Bit plane 5');  
b=bitget(a,6);subplot(3,3,7);imshow(logical(b));title('Bit plane 6');  
b=bitget(a,7);subplot(3,3,8);imshow(logical(b));title('Bit plane 7');
b=bitget(a,8);subplot(3,3,9);imshow(logical(b));title('Bit plane 8'); 

