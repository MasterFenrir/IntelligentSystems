length = load('data/lab1_1.mat');
hair = load('data/lab1_2.mat');
%plotHistogram(length.length_men, length.length_women);
plotLengthAgainstHair(hair.measurements(:, 2), hair.measurements(:, 1)); 