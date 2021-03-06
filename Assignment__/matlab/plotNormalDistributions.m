function [ ] = plotNormalDistributions( S1, S2 )
%PLOTNOR Plot the normal distributions, combined with the scatter plots.

    
    [mean1, stddef1] = meanAndStdef(S1);
    [mean2, stddef2] = meanAndStdef(S2);    

    iptsetpref('ImshowBorder','tight');
    figure(2);
    hold off; plot(0,0); box on; 
    axis square; hold on;
    
    scatter(S1, 1:length(S1), 'bo'); 
    scatter(S2, 1:length(S2), 'ro');
    xlabel(['Value'],'fontsize',16);
    ylabel(['Element number'],'fontsize',16);
    
    xl = xlim;
    x = xl(1):0.1:xl(2);
    gS1 = normpdf(x, mean1, stddef1);
    gS2 = normpdf(x, mean2, stddef2);

    yyaxis right
    plot(x,gS1, 'b');
    plot(x,gS2, 'r');
    ylabel(['Probability density'],'fontsize',16);
    
    print('img/ndb', '-dpng')
end

