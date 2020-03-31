img = imread(uigetfile);
imgray = rgb2gray(img);
[m, n] = size(imgray);
g = 0:255;
count = zeros(1,256);
for i = 1:m
    for j = 1:n
        int = imgray(i,j);
        count(int+1) = count(int+1) + 1;
    end
end
subplot(3,2,1); imshow(img);
subplot(3,2,2); imshow(imgray);
subplot(3,2,3); imhist(img);
subplot(3,2,4); imhist(imgray);
subplot(3,2,5); imshow(imgray);
subplot(3,2,6); bar(g, count,1);