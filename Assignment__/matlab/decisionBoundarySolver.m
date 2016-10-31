function [ output_args ] = decisionBoundarySolver( S1, S2 )
%DECISIONBOUNDARYSOLVER Summary of this function goes here
%   Detailed explanation goes here

    [p1, p2] = priorProbability(S1, S2);
    [m1, s1] = meanAndStdef(S1);
    [m2, s2] = meanAndStdef(S2);  
    
    syms x;
    
    out = solve(p1*1/(sqrt(2*pi)*s1)*exp(-((x-m1).^2)/(2*s1*s1)) == p2*1/(sqrt(2*pi)*s2)*exp(-((x-m2).^2)/(2*s2*s2)), x);
    vpa(out(1, 1))
    vpa(out(2, 1))

end

