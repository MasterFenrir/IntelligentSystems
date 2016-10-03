function [ ] = displayCannyEdgeDetectionSpecific( image, noiseLevel )
%DISPLAYCANYEDGEDETECTIONSPECIFIC Summary of this function goes here
%   Detailed explanation goes here
    
    iptsetpref('ImshowBorder','tight');

    figure('name',strcat(noiseLevel,'defaults'));
    [ default, threshold ] = edge(image,'canny');
    imshow(default);
    
    sensitivelow = threshold - [0.03125, 0];
    sensitivehigh = threshold - [0, 0.0781];
    insensitivelow = threshold + [0.03125, 0];
    insensitivehigh = threshold + [0, 0.0781];
    
    figure('name',strcat(noiseLevel,'sensitive lower threshold thres [0.03125, 0.1562]'));
    noNoisSensetiveLow = edge(image,'canny', sensitivelow);
    imshow(noNoisSensetiveLow);
    
    figure('name',strcat(noiseLevel,'sensitive high threshold [0.0625, 0.0781]'));
    noNoisSensetiveHigh = edge(image,'canny', sensitivehigh);
    imshow(noNoisSensetiveHigh);
    
    figure('name',strcat(noiseLevel,'insensitive lower threshold [0.09375, 0.1562]'));
    noNoisInsensetiveLow = edge(image,'canny', insensitivelow);
    imshow(noNoisInsensetiveLow);
    
    figure('name',strcat(noiseLevel,'insensitive high threshold [0.0625, 0.2343]'));
    noNoisInsensetiveHigh = edge(image,'canny', insensitivehigh);
    imshow(noNoisInsensetiveHigh);
    
    figure('name',strcat(noiseLevel,'low sigma sqrt(1)'));
    lowsigma = edge(image,'canny', threshold, sqrt(1));
    imshow(lowsigma);
    
    figure('name',strcat(noiseLevel,'high sigma sqrt(3)'));
    highsigma = edge(image,'canny', threshold, sqrt(3));
    imshow(highsigma);
end

