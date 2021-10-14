
A = imread("Im024.bmp");
A = rgb2gray(A);
[x,y] = size(A);
G = zeros([x y]);
nUpper = 0;
nLower = 0;
%Step 1: Select the initial value of the threshold ‘T’
T = 70;
%Step 2: Step 2: Partition the input image into two potions;
%(I) Pixel values greater than and equal to the threshold.
%(II) Pixel values less than the threshold.
for i=1:x
    for j=1:y
        if (A(i,j) >= T)
            G(i,j) = 1;
            nUpper = nUpper+1;
        else
            nLower = nLower+1
        end
    end
end
%Step 3: Find the mean value of two new portions computed in
%"Step 2".

%Step 4: Calculate the new threshold as an average of two means.

%Step 5: If the difference between the two thresholds new and old
%is below T, terminate. Else, apply the new threshold to an
%input image.