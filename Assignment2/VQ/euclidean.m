function [ minimum, distances, selected ] = euclidean( datapoint, prototypes )
%EUCLIDEAN Summary of this function goes here
%   Detailed explanation goes here
    distances = pdist(vertcat(datapoint, prototypes), 'euclidean');
    distances = distances(1:length(prototypes));

    minimum = min(distances);
    selected = prototypes(distances == minimum, :); 
end

