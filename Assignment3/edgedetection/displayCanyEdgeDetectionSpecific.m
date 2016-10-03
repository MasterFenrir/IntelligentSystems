function [ ] = displayCanyEdgeDetectionSpecific( image, noiseLevel )
%DISPLAYCANYEDGEDETECTIONSPECIFIC Summary of this function goes here
%   Detailed explanation goes here
    figure('name',strcat(noiseLevel,'defaults'));
    [ default, threshold ] = edge(image,'canny');
    imshow(default);
    
    sensetivelow = threshold - [0.03125, 0];
    sensetivehigh = threshold - [0, 0.0781];
    insensetivelow = threshold + [0.03125, 0];
    insensetivehigh = threshold + [0, 0.0781];
    
    figure('name',strcat(noiseLevel,'sesetive lower threshold'));
    noNoisSensetiveLow = edge(image,'canny', sensetivelow);
    imshow(noNoisSensetiveLow);
    
    figure('name',strcat(noiseLevel,'sesetive high threshold'));
    noNoisSensetiveHigh = edge(image,'canny', sensetivehigh);
    imshow(noNoisSensetiveHigh);
    
    figure('name',strcat(noiseLevel,'insesetive lower threshold'));
    noNoisInsensetiveLow = edge(image,'canny', insensetivelow);
    imshow(noNoisInsensetiveLow);
    
    figure('name',strcat(noiseLevel,'insesetive high threshold'));
    noNoisInsensetiveHigh = edge(image,'canny', insensetivehigh);
    imshow(noNoisInsensetiveHigh);
    
    figure('name',strcat(noiseLevel,'low sigma'));
    lowsigma = edge(image,'canny', threshold, sqrt(1));
    imshow(lowsigma);
    
    figure('name',strcat(noiseLevel,'high sigma'));
    highsigma = edge(image,'canny', threshold, sqrt(3));
    imshow(highsigma);
end

