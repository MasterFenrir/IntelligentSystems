function [ mean, stddef ] = meanAndStdef( Data )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    
    res1 = mle(Data);
    mean = res1(1);
    stddef = res1(2);
   
end

