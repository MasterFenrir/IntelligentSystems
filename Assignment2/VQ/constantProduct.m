function [ result ] = constantProduct( selected, target )
%CONSTANTPRODUCT Summary of this function goes here
%   Detailed explanation goes here
    const = 0.5;
    result = selected + ((target - selected) * const);
end

