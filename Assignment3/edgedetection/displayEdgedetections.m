function [] = displayEdgedetections( chestImage )
%DISPLAYEDGEDETECTIONS Display every kind of edge detection

[sdResult] = simpleDifferentiation(chestImage);
[robertResult] = robert(chestImage);
[sobelResult] = sobel(chestImage);
[prewittResult] = prewitt(chestImage);

iptsetpref('ImshowBorder','tight');

figure('Name','Simple Differentiation');
imshow(sdResult);

figure('Name','Robert');
imshow(robertResult);

figure('Name','Sobel');
imshow(sobelResult);

figure('Name','Prewitt');
imshow(prewittResult);

end

