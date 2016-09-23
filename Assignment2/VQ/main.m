load('w6_1x.mat');
load('w6_1y.mat');
load('w6_1z.mat');
x = w6_1x;
y = w6_1y;
z = w6_1z;

[xP, xN] = size(x);
[yP, yN] = size(y);
[zP, zN] = size(z);

dataSets = [x, y, z];

K = 3;
n = 0.1;
mu = 'constantProduct';
tMax = 2;
prototypeStrat = 'randomDataPoints';

resultPrototypes = zeros(length(datasets));

for idx = 1:3
    resultPrototypes(idx) = vectorQuantization(dataSets(idx), k, n, mu, tMax, prototypeStrat);
end