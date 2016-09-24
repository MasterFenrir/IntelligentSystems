load('w6_1x.mat');
load('w6_1y.mat');
load('w6_1z.mat');
x = w6_1x;
y = w6_1y;
z = w6_1z;

dataSets = {x, y, z};

numberOfPrototypes = 3;
updateStrat = 'constantProduct';
tMax = 100;
prototypeStrat = 'randomDataPoints';

for idx = 1:3
    [resultPrototypes, quantizationErrors] = vectorQuantization(idx, dataSets{idx}, numberOfPrototypes, updateStrat, tMax, prototypeStrat);
    plotLearningCurve(idx + length(dataSets), tMax, numberOfPrototypes, 0.1, quantizationErrors);
end