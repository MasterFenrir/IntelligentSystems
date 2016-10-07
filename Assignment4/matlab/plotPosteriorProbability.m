function [ ] = plotPosteriorProbability( S1, S2, t )
%PLOTNOR Plot the normal distributions, combined with the scatter plots.

    res1 = mle(S1);
    mean1 = res1(1);
    stddef1 = res1(2);
    res2 = mle(S2);
    mean2 = res2(1);
    stddef2 = res2(2);    

    iptsetpref('ImshowBorder','tight');
    figure(3);
    hold off; plot(0,0); box on; 
    axis square; hold on;
    
    scatter(S1, 1:length(S1), 'bo'); 
    scatter(S2, 1:length(S2), 'ro');
    scatter(t, 1:length(t), 'ks');
    xlabel(['Value'],'fontsize',16);
    ylabel(['Element number'],'fontsize',16);
    
    xl = xlim;
    x = xl(1):0.1:xl(2);
    gS1 = 2/3 * normpdf(x, mean1, stddef1);
    gS2 = 1/3 * normpdf(x, mean2, stddef2);

    yyaxis right
    plot(x,gS1, 'b');
    plot(x,gS2, 'r');
    ylabel(['Probability density'],'fontsize',16);
end

