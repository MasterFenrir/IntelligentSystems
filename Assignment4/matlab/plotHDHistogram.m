function [  ] = plotDHHistogram( personfiles )
%PLOTDHHISTOGRAM Summary of this function goes here
%   Detailed explanation goes here
    rng(982374582,'twister');
    
    samePersonDist = zeros(1000, 1);
    differentPersonsDist = zeros(1000, 1);
    
    for i = 1 : 1000 
        personSame = load(personfiles{randi(20)});
        chosenIrisis = randsample(20,2);
        iris1 = personSame.iriscode(chosenIrisis(1), :);
        iris2 = personSame.iriscode(chosenIrisis(2), :);
        samePersonDist(i) = pdist2(iris1, iris2, 'hamming');
        
        chosenPersons = randsample(20,2);
        personDifferent1 = load(personfiles{chosenPersons(1)});
        personDifferent2 = load(personfiles{chosenPersons(2)});
        iris1 = personDifferent1.iriscode(randi(20), :);
        iris2 = personDifferent2.iriscode(randi(20), :);
        differentPersonsDist(i) = pdist2(iris1, iris2, 'hamming');
    end
    
    [~ , bins] = hist( [samePersonDist(:),differentPersonsDist(:)], 20);
    samePersonDistCounts = hist( samePersonDist , bins );
    differentPersonsDistCounts = hist( differentPersonsDist , bins );
    combinedCounts = [samePersonDistCounts.', differentPersonsDistCounts.'];

    iptsetpref('ImshowBorder','tight');
    figure('name', 'hamming distance');
    hold off; box on; 
    axis square; hold on;

    bar(bins, combinedCounts); 
    
    xlabel(['hamming distance'],'fontsize',16);
    ylabel(['Number of iris pairs'],'fontsize',16);
    
    legend('same person', 'different person');
end

