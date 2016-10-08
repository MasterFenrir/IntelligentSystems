length = load('data/lab1_1.mat');
hair = load('data/lab1_2.mat');
fish = load('data/lab1_3.mat');
%plotHistogram(length.length_men, length.length_women);
%plotLengthAgainstHair(hair.measurements(:, 2), hair.measurements(:, 1)); 
plotFish(fish);