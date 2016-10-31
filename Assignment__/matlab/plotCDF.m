function [ firstBoundValue, secondBoundValue ] = plot( prior, data, xRange, firstBoundary, secondBoundary, fileName )
%PLOT Summary of this function goes here
%   Detailed explanation goes here
    
    [mean, stddef] = meanAndStdef(data);
    firstBoundValue = vpa(cdf('Normal', firstBoundary, mean, stddef)) * prior;
    secondBoundValue = vpa(cdf('Normal', secondBoundary, mean, stddef)) * prior;
    
    y = cdf('Normal',xRange,mean,stddef) * prior;
    figure('name', 'CDF');
    plot(xRange, y);
    hold on;
    plot(firstBoundary, firstBoundValue, 'rx', 'MarkerSize', 50);
    plot(secondBoundary, secondBoundValue, 'rx', 'MarkerSize', 50);
    
    xlabel(['Value'],'fontsize',16);
    ylabel(['Cumulative probability'],'fontsize',16);
    
    %print(strcat('img/', fileName), '-dpng');

end

