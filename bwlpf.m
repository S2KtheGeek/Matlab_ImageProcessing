a = rgb2gray(imread(uigetfile));
d0 = input('Enter the value of D0=');%accepting d0
n1 = input('Enter the size of n=');%accepting n
af = fftshift(fft2(a));%applying fourier transform.
[m,n] = size(af);
[x,y] = meshgrid(((-(n/2))+1):n/2, ((-(m/2))+1):m/2);
d = hypot(x,y);%finding d
h = 1./(1+(d./d0).^(2*n1));%computing butterworth low pass filter
af1= af.*h;%applying the low pass filter
af11 = ifft2(af1);%applying inverse fourier transform
subplot(2,2,1); imshow(a);title('original image');
subplot(2,2,2); fftshow(af); title('Fourier Transform');
subplot(2,2,3); fftshow(af1); title('Fourier Transform BWLPF');
subplot(2,2,4); ifftshow(af11); title('Inv-Fourier Transform BWLPF');