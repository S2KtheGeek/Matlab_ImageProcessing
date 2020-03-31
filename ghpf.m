a = rgb2gray(imread(uigetfile));
d0 = input('Enter the value of D0=');%accepting d0
af = fftshift(fft2(a));%applying fourier transform
[m,n] = size(af);
[x,y] = meshgrid(((-(n/2))+1):n/2, ((-(m/2))+1):m/2);
d = hypot(x,y);%calculating the value of d
h = exp(-(d.^2)./(2*(d0^2)));%computing the gaussian high pass filter
hh = 1 - h;%finding the gaussian high pass filter
af1= af.*hh;%applying the gaussian high pass filter
af11 = ifft2(af1);%applying the gaussian high pass filter
subplot(2,2,1); imshow(a);title('original image');
subplot(2,2,2); fftshow(af); title('Fourier Transform');
subplot(2,2,3); fftshow(af1); title('Fourier Transform GHPF');
subplot(2,2,4); ifftshow(af11); title('Inv-Fourier Transform GHPF');