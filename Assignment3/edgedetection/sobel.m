function [ imageSobelX, imageSobelY ] = sobel( image, edgeOption )
%SOBEL Summary of this function goes here
%   Detailed explanation goes here
    if(nargin < 2) 
        edgeOption = 'replicate';
    end
    sobelX = [-1,-2,-1;0,0,0;1,2,1];
    sobelY = sobelX.';
    imageMatrix = im2double(imread(image));
    
    imageSobelX = imfilter(imageMatrix, sobelX, edgeOption, 'conv');
    imageSobelY = imfilter(imageMatrix, sobelY, edgeOption, 'conv');
end

