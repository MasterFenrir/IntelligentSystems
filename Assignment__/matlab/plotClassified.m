function [  ] = plotClassified( S1, S2, T, d1, d2 )
%PLOTCLASSIFIED Plot the posterior probability, but then with the
% values of T classified using the decision boundaries

    [prior1, prior2] = priorProbability(S1, S2);
    [mean1, stddef1] = meanAndStdef(S1);
    [mean2, stddef2] = meanAndStdef(S2);  

    iptsetpref('ImshowBorder','tight');
    figure(4);
    hold off; plot(0,0); box on; 
    axis square; hold on;
    
    scatter(S1, 1:length(S1), 'bo'); 
    scatter(S2, 1:length(S2), 'ro');
    
    for i = 1:length(T)
        if T(i) < d1 || T(i) > d2
            plot(T(i), i, 'bs');
        else
            plot(T(i), i, 'rs');
        end
    end
    
    xlabel(['Value'],'fontsize',16);
    ylabel(['Element number'],'fontsize',16);
    
    xl = xlim;
    x = xl(1):0.1:xl(2);
    gS1 = prior1 * normpdf(x, mean1, stddef1);
    gS2 = prior2 * normpdf(x, mean2, stddef2);

    yyaxis right
    plot(x,gS1, 'b');
    plot(x,gS2, 'r');
    ylabel(['Probability density'],'fontsize',16);
    
    print('img/classified', '-dpng')

end

