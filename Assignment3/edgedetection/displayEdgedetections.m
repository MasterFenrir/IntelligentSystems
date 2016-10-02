function [] = displayEdgedetections( chestImage, figureStart )
%DISPLAYEDGEDETECTIONS Summary of this function goes here
%   Detailed explanation goes here

[sdResult] = simpleDifferentiation(chestImage);
[robertResult] = robert(chestImage);
[sobelResult] = sobel(chestImage);
[prewittResult] = prewitt(chestImage);

%figure(figureStart);
%imshow(sdResult);

%figure(figureStart + 1);
%imshow(robertResult);

figure(figureStart + 2);
imshow(sobelResult);

%figure(figureStart + 3);
%imshow(prewittResult);

end

