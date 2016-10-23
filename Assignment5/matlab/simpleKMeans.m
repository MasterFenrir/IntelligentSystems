function [ prototypes, clusters] = simpleKMeans( data, k )
%SIMPLEKMEANS Compute the K means

    prototypes = datasample(data, k, 'replace', false);
    dists = pdist2(data, prototypes);
    
    prevPrototypes = zeros(k,2);
    while ~ isequal(prevPrototypes, prototypes)
        dists = pdist2(data, prototypes);
        prevPrototypes = prototypes;
        
        [~, mask] = min(dists, [], 2);
        for i = 1:k 
            prototypes(i, :) = mean(data(mask == i, :) , 1);
        end       
    end
    
    [~, mask] = min(dists, [], 2);
    clusters = cell(k);
    for i = 1:k
        clusters{i} = data(mask == i, :);
    end
end

