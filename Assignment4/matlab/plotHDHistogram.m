function [  ] = plotHDHistogram( samePersonDist, differentPersonsDist )
%PLOTDHHISTOGRAM Plot a histogram of the Hamming distances from
% several iris comparisons. It also plots matching normal distributions

    iptsetpref('ImshowBorder','tight');
    figure('name', 'hamming distance');
    hold off; box on; 
    axis square; hold on;

    h2 = histogram(differentPersonsDist); 
    h1 = histogram(samePersonDist); 
    h1.BinWidth = h2.BinWidth;
    
    xlabel(['Hamming distance'],'fontsize',16);
    ylabel(['Number of iris pairs'],'fontsize',16);
    
    yyaxis right
    xl = xlim;
    x = xl(1):0.005:xl(2);
    gSSamePerson = computeNormalDistribution(x, samePersonDist);
    gSDifferentPerson = computeNormalDistribution(x, differentPersonsDist);
    plot(x,gSSamePerson, 'r');
    plot(x,gSDifferentPerson, 'b');
    
    ylabel(['Probability density'],'fontsize',16);
     
    legend('Different person', 'Same person');
    
    decisionBoundry = computeDecisionBoundary(differentPersonsDist);
    disp('The found decision boundary is: ');
    disp(decisionBoundry);
end

