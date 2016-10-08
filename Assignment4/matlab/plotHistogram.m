function [  ] = plotHistogram( length_men, length_women )
%PLOTHISTOGRAM Plot a histogram with a legend

    xMin = min(min([length_men, length_women])) - 1;
    xMax = max(max([length_men, length_women])) + 1;

    iptsetpref('ImshowBorder','tight');
    figure(1);
    hold off; box on; 
    axis square; hold on;
    
    histogram(length_men);
    histogram(length_women);
    xlim([xMin xMax]);
    
    xlabel(['Length in cm'],'fontsize',16);
    ylabel(['Number of people'],'fontsize',16);
    
    legend('Male length', 'Female length');
end

