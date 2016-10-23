function [ y ] = simpleFrequencies( vector )
%SIMPLEFREQUENCIES Summary of this function goes here
%   Detailed explanation goes here

    y = zeros(size(vector));
    for i = 1:length(vector)
        y(i) = sum(vector==vector(i));
    end

end

