function [ nd ] = computeNormalDistribution( x, data )
%COMPUTENORMALDISTRIBUTION Create a normal distribution with the given
%data for a data range x
    
    res = mle(data);
    mn = res(1);
    stddef = res(2);
    nd = normpdf(x, mn, stddef);
    
end

