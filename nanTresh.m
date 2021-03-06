function IM = nanTresh(I)

%funzione che permette di adattare il tresholding su immagini con
%contorno nero, evitando il calcolo di una soglia eccessivamente bassa
%- A -> immagine RGB
%- IM -> imagine in bianco e nero

I = imread("RIM-ONE\Normal\Im004.bmp");

G = rgb2gray(I);
numR = size(G,1);
numC = size(G,2);
N = NaN(numR,numC);

for i = 1:numR
    for j = 1: numC-1
        if (G(i,j) > 0)
            N(i,j) = G(i,j);
       end
   end
end

level = graythresh(N);
IM = imbinarize(G,level);
imshow(IM);

