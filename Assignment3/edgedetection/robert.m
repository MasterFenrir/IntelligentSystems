function [ imageSobelX, imageSobelY ] = robert( image, edgeOption )
%SOBEL Summary of this function goes here
%   Detailed explanation goes here
    if(nargin < 2) 
        edgeOption = 'replicate';
    end
    robertX = [0,0,0;0,0,1;0,-1,0];
    robertY = robertX.';
    imageMatrix = im2double(imread(image));
    
    imageSobelX = imfilter(imageMatrix, robertX, edgeOption, 'conv');
    imageSobelY = imfilter(imageMatrix, robertY, edgeOption, 'conv');
end



