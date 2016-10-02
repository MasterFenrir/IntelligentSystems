function [ result, deltaX, deltaY ] = simpleDifferentiation( image, borderSolution)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    if(nargin < 2) 
        borderSolution = 'replicate';
    end

    deltaXMask = [0 0 0;-1 1 0;0 0 0];
    deltaYMask = [0 -1 0;0 1 0;0 0 0];
    deltaX = imfilter(image, deltaXMask, borderSolution, 'conv');
    deltaY = imfilter(image, deltaYMask, borderSolution, 'conv');
    
    result = deltaX + deltaY;
end

