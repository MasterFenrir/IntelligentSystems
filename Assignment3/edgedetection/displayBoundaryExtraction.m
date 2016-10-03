function [ ] = displayBoundaryExtraction( image )
%DISPLAYBOUNDARYEXTRACTION Summary of this function goes here
%   Detailed explanation goes here
    im = boundaryExtraction(image, 0.45);
    figure('name', 'edge_extraction');
    imshow(im);
end

