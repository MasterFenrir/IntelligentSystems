function [ outImage ] = boundaryExtraction( imageMatrix, acceptanceValue )
%EDGEEXTRACTION Summary of this function goes here
%   Detailed explanation goes here
    if(nargin < 2)
        acceptanceValue = 0.5;
    end
    
    binaryImage = imageMatrix > acceptanceValue;
    
    structuringElement = [...
        1 1 1;...
        1 1 1;...
        1 1 1];
    
    outImage = imerode(binaryImage, structuringElement);
    outImage = binaryImage - outImage;
end

