clc; clear; 
g = imread('passport.jpg');

% filter kernels;
a = fspecial('sobel'); % sobel
b = [3 0 -3; 10 0 -10; 3 0 -3]; % sharr
c = [1 0 -1; 1 0 -1; 1 0 -1]; % vertical edge
d = [1 1 1; 0 0 0; -1 -1 -1]; % horizontal edge

% imshow(g);

% filtered images
f = imfilter(g, a);
h = imfilter(g, b);
j = imfilter(g, c);
k = imfilter(g, d);

% show filtered images
figure, imshow(f);
figure, imshow(h);
figure, imshow(j);
figure, imshow(k);
