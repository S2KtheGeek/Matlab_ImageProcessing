a = rgb2gray(imread(uigetfile));
d0 = input('Enter the value of D0=');%accepting d0
af = fftshift(fft2(a));
[m,n] = size(af);
[x,y] = meshgrid(((-(n/2))+1):n/2, ((-(m/2))+1):m/2);
d = sqrt(x.^2+y.^2);
hl=z<=d0;%value should be less than equal to the thresh hold d0
hh = 1 - hl;%finding the highpass frequencies
af1= af.*hh;%applying ideal highpass filter on the image
af11 = ifft2(af1);%applying inverse fourier transform
subplot(2,2,1); imshow(a);title('original image');
subplot(2,2,2); fftshow(af); title('Fourier Transform');
subplot(2,2,3); fftshow(af1); title('Fourier Transform IHPF');
subplot(2,2,4); ifftshow(af11); title('Inv-Fourier Transform IHPF');