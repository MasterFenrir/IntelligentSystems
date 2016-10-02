function [ result, imageSobelX, imageSobelY ] = sobel( imageMatrix, edgeOption )
%SOBEL Summary of this function goes here
%   Detailed explanation goes here
    if(nargin < 2) 
        edgeOption = 'replicate';
    end
    sobelX = fspecial('sobel').';
    sobelY = fspecial('sobel');
    
    imageSobelX = imfilter(imageMatrix, sobelX, edgeOption, 'conv');
    imageSobelY = imfilter(imageMatrix, sobelY, edgeOption, 'conv');
    
    result = imageSobelX + imageSobelY;
end

