function [ ] = displayCannyEdgedetection( image )
%DISPLAYCANNYEDGEDETECTION Summary of this function goes here=
%   Detailed explanation goes here

%     MatLab also implements the Canny edge detector, implemented through the edge function:
% BW = edge(F,’canny’);
% In this simplest form it chooses default values for the thresholds (high and low), and the smoothing
% parameter. Look in MatLab help to see how this is done. Using the same methods as above, test how
% the Canny edge detector performs as a function of added noise. Also test how parameter settings affect
% the result. Discuss your results qualitatively, and indicate which settings at different noise levels you
% think are best and why.

    displayCanyEdgeDetectionSpecific(image);

%     mediumNoise = imnoise(image, 'gaussian', 0.0, 0.001);
%     displayCanyEdgeDetectionSpecific(mediumNoise, 'medium noise ');
    
%     heavyNoise = imnoise(image, 'gaussian', 0.0, 0.005);
%     displayCandEdgeDetectionSpecific(heavyNoise);    
end

