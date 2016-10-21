function [ prototypes, mask ] = simpleKMeans( data, k )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    prototypes = datasample(data, k, 'replace', false);
    
    dists = pdist2(data, prototypes, 'euclidean');
    
    prevPrototypes = zeros(k,2);
    while ~ isequal(prevPrototypes, prototypes)
        prevPrototypes = prototypes;
        
        [~, mask] = min(dists, [], 2)
        data(1:12:120, : )
        prototypes
        dists(1:12:120, :)
        mask(1:12:120, :)
        for i = 1:k 
            s = data(mask == i, :);
            prototypes(i, :) = mean(data(mask == i, :) , 1);
        end       
    end
    
    [~, mask] = min(dists, [], 2);
end

