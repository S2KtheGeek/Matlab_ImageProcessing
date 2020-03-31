img = imread(uigetfile);
%imgray = rgb2gray(img);
[m, n, p] = size(img);
g = 0:255;
count = zeros(1,256);
for k = 1:p
    for i = 1:m
        for j = 1:n
            int = img(i,j,k);
            count(int+1) = count(int+1) + 1;
        end
    end
end
subplot(3,2,1); imshow(img);
subplot(3,2,2); imshow(imgray);
subplot(3,2,3); imhist(img);
subplot(3,2,4); imhist(imgray);
subplot(3,2,5); imshow(imgray);
subplot(3,2,6); bar(g, count,0.1);