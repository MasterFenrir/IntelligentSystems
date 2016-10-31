function [ first, second ] = decisionBoundarySolver( S1, S2 )
%DECISIONBOUNDARYSOLVER Solve for the decision boundaries between two sets
%of points

    [p1, p2] = priorProbability(S1, S2);
    [m1, s1] = meanAndStdef(S1);
    [m2, s2] = meanAndStdef(S2);  
    
    syms x;
    
    out = solve(p1*1/(sqrt(2*pi)*s1)*exp(-((x-m1).^2)/(2*s1*s1)) == p2*1/(sqrt(2*pi)*s2)*exp(-((x-m2).^2)/(2*s2*s2)), x);
    first = vpa(out(1, 1));
    second = vpa(out(2, 1));

end

