img = imread(uigetfile);
imgray = rgb2gray(img);
[m, n] = size(imgray);
nop = m * n;
freq = zeros(1,256);
prob_freq = zeros(1,256);

for i = 1:m
    for j = 1:n
        int = imgray(i,j);
        freq(int+1) = freq(int+1) + 1;
        prob_freq(int+1) = freq(int+1) / nop;
    end
end

sum = 0;
cumf = zeros(1,256);
cp = zeros(1,256);
output = zeros(1,256);
no_bins = 255;

cp(1)=prob_freq(1);
for i=2:256
    cp(i)=cp(i-1)+prob_freq(i);
end


for i = 1:256
    output(i)=cp(i)*no_bins;
end

Histo = uint8(zeros(m,n));

for i = 1:m
    for j = 1:n
        Histo(i,j) = uint8(output(imgray(i,j)+1));
    end
end



normhist = histeq(imgray);

subplot(3,2,1);
imshow(imgray);
title('Normal');

subplot(3,2,3);
imshow(Histo);
title('Without HISTEQ');

subplot(3,2,5);
imshow(normhist);
title('With HISTEQ');

subplot(3,2,2);
imhist(imgray);
title('Normal');

subplot(3,2,4);
imhist(Histo);
title('Without HISTEQ');

subplot(3,2,6);
imhist(normhist);
title('With HISTEQ');


