function [  ] = plotHDHistogram( personfiles )
%PLOTDHHISTOGRAM Plot a histogram of the Hamming distances from
% several iris comparisons. It also plots matching normal distributions

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
    
    res1 = mle(samePersonDist);
    meanSamePerson = res1(1);
    stddefSamePerson = res1(2);
    res2 = mle(differentPersonsDist);
    meanDifferentPerson = res2(1);
    stddefDifferentPerson = res2(2); 

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
    gSSamePerson = normpdf(x, meanSamePerson, stddefSamePerson);
    gSDifferentPerson = normpdf(x, meanDifferentPerson, stddefDifferentPerson);
    plot(x,gSSamePerson, 'r');
    plot(x,gSDifferentPerson, 'b');
    
    ylabel(['Probability density'],'fontsize',16);
     
    legend('Different person', 'Same person');
end

