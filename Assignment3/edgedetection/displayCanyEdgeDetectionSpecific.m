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
    
    figure('name',strcat(noiseLevel,'sesetive lower threshold thres [0.03125, 0.1562]'));
    noNoisSensetiveLow = edge(image,'canny', sensetivelow);
    imshow(noNoisSensetiveLow);
    
    figure('name',strcat(noiseLevel,'sesetive high threshold [0.0625, 0.0781]'));
    noNoisSensetiveHigh = edge(image,'canny', sensetivehigh);
    imshow(noNoisSensetiveHigh);
    
    figure('name',strcat(noiseLevel,'insesetive lower threshold [0.09375, 0.1562]'));
    noNoisInsensetiveLow = edge(image,'canny', insensetivelow);
    imshow(noNoisInsensetiveLow);
    
    figure('name',strcat(noiseLevel,'insesetive high threshold [0.0625, 0.2343]'));
    noNoisInsensetiveHigh = edge(image,'canny', insensetivehigh);
    imshow(noNoisInsensetiveHigh);
    
    figure('name',strcat(noiseLevel,'low sigma sqrt(1)'));
    lowsigma = edge(image,'canny', threshold, sqrt(1));
    imshow(lowsigma);
    
    figure('name',strcat(noiseLevel,'high sigma sqrt(3)'));
    highsigma = edge(image,'canny', threshold, sqrt(3));
    imshow(highsigma);
end

