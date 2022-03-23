%function img = contour_Based_App(A)
A1 = imread("RIM-ONE\Normal\Im001.bmp");
C = rgb2gray(A1);

mask = zeros(size(C));

mask(25:end-25,25:end-25) = 1;

imshow(mask);

BW = activecontour(C,mask,1500);
imshow(BW);



