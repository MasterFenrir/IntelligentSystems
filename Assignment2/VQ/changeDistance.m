function [ result ] = changeDistance( selected, target, learning)
%CONSTANTPRODUCT Modify the position of a point, based on another point
    result = selected + ((target - selected) * learning);
end

