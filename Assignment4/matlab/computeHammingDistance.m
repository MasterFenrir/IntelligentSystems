function [ samePerson, differentPersons ] = computeHammingDistance( personfiles )
%COMPUTEHAMMINGDISTANCE Compute the hamming distance for the same person,
%and between different persons.

    rng(982374582,'twister');
    
    samePerson = zeros(1000, 1);
    differentPersons = zeros(1000, 1);
    
    for i = 1 : 1000 
        personSame = load(personfiles{randi(20)});
        chosenIrisis = randsample(20,2);
        iris1 = personSame.iriscode(chosenIrisis(1), :);
        iris2 = personSame.iriscode(chosenIrisis(2), :);
        samePerson(i) = pdist2(iris1, iris2, 'hamming');
        
        chosenPersons = randsample(20,2);
        personDifferent1 = load(personfiles{chosenPersons(1)});
        personDifferent2 = load(personfiles{chosenPersons(2)});
        iris1 = personDifferent1.iriscode(randi(20), :);
        iris2 = personDifferent2.iriscode(randi(20), :);
        differentPersons(i) = pdist2(iris1, iris2, 'hamming');
    end

end

