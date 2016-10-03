function [ outImage ] = boundaryExtraction( imageMatrix, acceptanceValeu )
%EDGEEXTRACTION Summary of this function goes here
%   Detailed explanation goes here
    if(nargin < 2)
        acceptanceValeu = 0.5;
    end
    
    binaryImage = imageMatrix > acceptanceValeu;
    
    structuringElement = [...
        1 1 1;...
        1 1 1;...
        1 1 1];
    
    outImage = imerode(binaryImage, structuringElement);
    outImage = binaryImage - outImage;
end

