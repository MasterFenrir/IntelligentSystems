length = load('data/lab1_1.mat');
hair = load('data/lab1_2.mat');
fish = load('data/lab1_3.mat');
% plotHistogram(length.length_men, length.length_women);
% plotLengthAgainstHair(hair.measurements(:, 2), hair.measurements(:, 1)); 
% plotFish(fish);
 personfiles = cell(20, 1);
for i = 1 : 20
	personfiles{i} = strcat('data/person', num2str(i, '%02u'), '.mat');
end
[samePerson, differentPersons] = computeHammingDistance(personfiles);
%plotHDHistogram(samePerson, differentPersons); 
plotCDF(differentPersons, 0:0.005:1, computeDecisionBoundary(differentPersons));

plotCDF(samePerson, -.1:0.005:.2, computeDecisionBoundary(differentPersons));