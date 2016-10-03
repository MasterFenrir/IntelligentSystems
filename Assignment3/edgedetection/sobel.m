function [ result, imageSobelX, imageSobelY ] = sobel( imageMatrix, edgeOption )
%SOBEL Sobel edge detection
    if(nargin < 2) 
        edgeOption = 'replicate';
    end
    sobelX = fspecial('sobel');
    sobelY = fspecial('sobel').';
    
    imageSobelX = imfilter(imageMatrix, sobelX, edgeOption, 'conv');
    imageSobelY = imfilter(imageMatrix, sobelY, edgeOption, 'conv');
    
    result = sqrt(imageSobelX.^2 + imageSobelY.^2);
end

