function [ quantizationError ] = quantizationError( datapoints, prototypes )
%QUANTIZIATIONERROR Calculate the quantization error for these datapoints
% and the corresponding prototypes
    
    quantizationError = 0;

    for idx = 1:length(datapoints)
        datapoint = datapoints(idx, :);
        minimum = euclidean(datapoint, prototypes);
        quantizationError = quantizationError + minimum;
    end

end

