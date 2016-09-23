load('w6_1x.mat');
load('w6_1y.mat');
load('w6_1z.mat');
x = w6_1x;
y = w6_1y;
z = w6_1z;

[xP, xN] = size(x);
[yP, yN] = size(y);
[zP, zN] = size(z);

dataSets = [x, y, z]; %todo make this higher demensional

numberOfPrototypes = 3;
updateStrat = 'constantProduct';
tMax = 5;
prototypeStrat = 'randomDataPoints';

for idx = 1:3
    fprintf('one round done!')
    resultPrototypes = vectorQuantization(dataSets(:, idx:idx+1), numberOfPrototypes, updateStrat, tMax, prototypeStrat);
end