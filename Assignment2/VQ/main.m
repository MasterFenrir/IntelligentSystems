load('w6_1x.mat');
load('w6_1y.mat');
load('w6_1z.mat');
x = w6_1x;
y = w6_1y;
z = w6_1z;

dataSets = {x, y, z};

numberOfPrototypes = 8;
updateStrat = 'changeDistance';
learning = 0.004;
tMax = 10;
prototypeStrat = 'randomDataPoints';

for idx = 1:length(dataSets)
    [resultPrototypes, quantizationErrors] = vectorQuantization(idx, dataSets{idx}, numberOfPrototypes, updateStrat, learning, tMax, prototypeStrat);
    plotLearningCurve(idx + length(dataSets), tMax, numberOfPrototypes, learning, quantizationErrors);
end