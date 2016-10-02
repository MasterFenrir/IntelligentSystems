function [ result, imageRobertX, imageRobertY ] = robert( imageMatrix, edgeOption )
%Robert Summary of this function goes here
%   Detailed explanation goes here
    if(nargin < 2) 
        edgeOption = 'replicate';
    end
    robertX = [0 0 0;0 -1 0;0 0 1]
    robertY = [0 0 0;0 0 -1;0 1 0]
    
    imageRobertX = imfilter(imageMatrix, robertX, edgeOption, 'conv');
    imageRobertY = imfilter(imageMatrix, robertY, edgeOption, 'conv');
    
    result = imageRobertX + imageRobertY;
end



