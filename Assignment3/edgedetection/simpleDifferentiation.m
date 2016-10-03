function [ result, deltaX, deltaY ] = simpleDifferentiation( image, borderSolution)
%UNTITLED Simple Differentiation edge detection

    if(nargin < 2) 
        borderSolution = 'replicate';
    end

    deltaXMask = [0 0 0;-1 1 0;0 0 0];
    deltaYMask = deltaXMask.';
    deltaX = imfilter(image, deltaXMask, borderSolution, 'conv');
    deltaY = imfilter(image, deltaYMask, borderSolution, 'conv');
    
    result = sqrt(deltaX.^2 + deltaY.^2) * 2;
end

