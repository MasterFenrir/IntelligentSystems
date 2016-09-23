function [ prototypes ] = vectorQuantization( dataset, numberOfPrototypes, updateStrat, tMax, prototypeStrat )
%VECTORQUANTIZATION Summary of this function goes here
%   Detailed explanation goes here

% Initialize the prototypes by selecting random data points %
% From 1 to tMax: %
%   Shuffle data %
%   for each datapoint, compare to prototypes %
%   Protype that is closest gets updated by n 
%   Plot datapoints
%   Evaluate the quantization error Hvq
% Plot the quantization error as a function of t
    prototypes = feval(prototypeStrat, dataset, numberOfPrototypes);
    [numberOfDataPoints, ~] = size(dataset);
    
    for epoch = 1:tMax
        data = datasample(dataset, numberOfDataPoints, 'replace', false);
        
        for idx = 1:numberOfDataPoints
            datapoint = data(idx, :);
            
            distances = pdist(vertcat(datapoint, prototypes), 'euclidean');
            distances = distances(1:length(prototypes));
            
            m = min(distances);
            selected = prototypes(distances == m, :);
            updated = feval(updateStrat, selected, datapoint);
            prototypes(distances == m, :) = updated;
        end
        
        prototypes
    end
end

