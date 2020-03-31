function [ ] = fftshow( f )
%Computes the Fourier transform of the image and shows the image
f1 = log(1 + abs(f));
fm = max(f1(:));
imshow(im2uint8(f1/fm));
end

