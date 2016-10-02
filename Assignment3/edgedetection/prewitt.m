function [ result, deltaX, deltaY ] = prewitt( image, borderSolution)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    if(nargin < 2) 
        borderSolution = 'replicate';
    end

    deltaXMask = [-1 -1 -1;0 0 0;1 1 1];
    deltaYMask = [-1 0 1;-1 0 1;-1 0 1];
    deltaX = imfilter(image, deltaXMask, borderSolution, 'conv');
    deltaY = imfilter(image, deltaYMask, borderSolution, 'conv');
    
    result = deltaX + deltaY;
end

