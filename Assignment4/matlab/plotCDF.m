function [ ] = plotCDF( data, xRange, xMarker)
%PLOTDIFFERENTPERSONSCDF Plot the CDF
    
    res = mle(data);
    mn = res(1);
    stddef = res(2);

    y = cdf('Normal',xRange,mn,stddef);
    
    figure('name', 'CDF');
    plot(xRange, y);
    hold on;
    plot(xMarker, cdf('Normal', [xMarker], mn, stddef), 'rx', 'MarkerSize', 50);
    
    xlabel(['Hamming distance'],'fontsize',16);
    ylabel(['Cumulative probability'],'fontsize',16);
    
end

