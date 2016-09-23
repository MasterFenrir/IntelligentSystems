function [ chosenPrototypes ] = randomDataPoints( dataset, numberOfPrototypes )
%RANDOMDATAPOINTS Summary of this function goes here
%   Detailed explanation goes here
    chosenPrototypes = datasample(dataset, numberOfPrototypes, 'replace', false);
end

