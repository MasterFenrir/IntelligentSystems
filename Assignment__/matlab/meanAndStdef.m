function [ mean, stddef ] = meanAndStdef( Data )
%MEANANDSTDEF Easy way of getting the mean and the standard deviaton
% of a set of points
    
    res1 = mle(Data);
    mean = res1(1);
    stddef = res1(2);
   
end

