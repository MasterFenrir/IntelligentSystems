function [ prior1, prior2 ] = priorProbability( S1, S2 )
%PRIORPROBABILITY Summary of this function goes here
%   Detailed explanation goes here

    [size1, ~] = size(S1);
    [size2, ~] = size(S2);
    prior1 = size1 / (size1 + size2);
    prior2 = size2 / (size1 + size2);

end

