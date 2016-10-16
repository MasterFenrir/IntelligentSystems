function [ ] = plotDifferentPersonsCDF( differentPersonsDist )
%PLOTDIFFERENTPERSONSCDF Summary of this function goes here
%   Detailed explanation goes here
    
    res = mle(differentPersonsDist);
    mn = res(1);
    stddef = res(2);

    x = 0:0.005:1;
    y = cdf('Normal',x,mn,stddef);
    figure('name', 'CDF');
    plot(x, y);
    hold on;
    plot(computeDecisionBoundary(differentPersonsDist), 0.0005, 'rx', 'MarkerSize', 50);
    
    xlabel(['Hamming distance'],'fontsize',16);
    ylabel(['Cumulative probability'],'fontsize',16);
    
end

