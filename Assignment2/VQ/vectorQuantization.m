function [ prototypes, quantizationErrors ] = vectorQuantization( setNumber, dataset, numberOfPrototypes, updateStrat, tMax, prototypeStrat )
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
    quantizationErrors = zeros(1, tMax);
    
    for epoch = 1:tMax
        data = datasample(dataset, numberOfDataPoints, 'replace', false);
        
        for idx = 1:numberOfDataPoints
            datapoint = data(idx, :);
            [minimum, distances, selected] = euclidean(datapoint, prototypes);
            updated = feval(updateStrat, selected, datapoint);
            prototypes(distances == minimum, :) = updated;
        end
        quantizationErrors(epoch) = quantizationError(dataset, prototypes);
        plotVQ(setNumber, epoch, dataset, prototypes);
    end
end

