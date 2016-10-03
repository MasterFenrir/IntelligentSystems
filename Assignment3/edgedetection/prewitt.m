function [ result, deltaX, deltaY ] = prewitt( image, borderSolution)
%UNTITLED Prewitt edge detection

    if(nargin < 2) 
        borderSolution = 'replicate';
    end

    deltaXMask = [1 1 1;0 0 0;-1 -1 -1];
    deltaYMask = deltaXMask.';
    deltaX = imfilter(image, deltaXMask, borderSolution, 'conv');
    deltaY = imfilter(image, deltaYMask, borderSolution, 'conv');
    
    result = sqrt(deltaX.^2 + deltaY.^2) * (4/3);
end

