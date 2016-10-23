function [ class ] = KNN( point, k, data, nrofclasses )
%KNN Summary of this function goes here
%   Detailed explanation goes here

    [dists, indices] = pdist2(data, point, 'Euclidean', 'Smallest', k);
    [rows, ~] = size(data);
    divider = rows / nrofclasses;
    classes = ceil(indices ./ divider);
    class = mode(classes);
    
    % Check whether there are multiple classes contending
    hist = histc(classes, unique(classes));
    x = find(hist==max(hist));
    if length(x) > 1
       freqs = simpleFrequencies(classes);
       freqIndices = find(freqs==max(freqs));
       means = zeros(2, nrofclasses);
       for i = 1:length(freqIndices)
           index = freqIndices(i);
           means(1, classes(index)) = means(1, classes(index)) + dists(index);
           means(2, classes(index)) = means(2, classes(index)) + 1;
       end
       % Choose the class based on the lowest average distance
       [~, class] = min(means(1, :) ./ means(2, :));
    end
end
