function [ result, imageRobertX, imageRobertY ] = robert( imageMatrix, edgeOption )
%ROBERT Robert edge detection
    if(nargin < 2) 
        edgeOption = 'replicate';
    end
    robertX = [0 0 0;0 1 0;0 0 -1];
    robertY = [0 0 0;0 0 1;0 -1 0];
    
    imageRobertX = imfilter(imageMatrix, robertX, edgeOption, 'conv');
    imageRobertY = imfilter(imageMatrix, robertY, edgeOption, 'conv');
    
    result = sqrt(imageRobertX.^2 + imageRobertY.^2) * 2;
end



