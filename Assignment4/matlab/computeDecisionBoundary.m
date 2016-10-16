function [ result ] = computeDecisionBoundary( data )
%COMPUTEDECISIONBOUNDARY Compute a decision boundary
    
    res = mle(data);
    result = res(1) + res(2) * sqrt(2) * erfinv(0.0005*2 - 1);

end

