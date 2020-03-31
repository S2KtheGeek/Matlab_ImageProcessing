function [ ] = ifftshow( f )
%Computes the inverse fourier transform of the image and shows the image.
f1 = abs(f);
fm = max(f1(:));
imshow(f1/fm);
end

