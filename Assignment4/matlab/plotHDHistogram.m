function [  ] = plotDHHistogram( personfiles )
%PLOTDHHISTOGRAM Summary of this function goes here
%   Detailed explanation goes here
    rng(982374582,'twister');
    
    samePersonIrisis = cell(2, 1000);
    differentPersonsIrisis = cell(2, 1000);
    
    for i = 1 : 1000 
        personSame = load(personfiles{randi(20)});
        chosenIrisis = randsample(20,2);
        samePersonIrisis{1, i} = personSame.iriscode(chosenIrisis(1), :);
        samePersonIrisis{2, i} = personSame.iriscode(chosenIrisis(2), :);
        
        chosenPersons = randsample(20,2);
        personDifferent1 = load(personfiles{chosenPersons(2)});
        personDifferent2 = load(personfiles{chosenPersons(2)});
        differentPersonsIrisis{1, i} = personDifferent1.iriscode(randi(20), :);
        differentPersonsIrisis{2, i} = personDifferent2.iriscode(randi(20), :);
    end
    
    hdssameperson = pdist(samePersonIrisis, 'hamming');
    hdsdifferentpersons =  pdist(differentPersonsIrisis, 'hamming');
    hdssameperson(1:10)
    hdsdifferentpersons(1:10)
end

