l = load('data/w5_1.mat');
load('data/w6_1x.mat');
load('data/w6_1y.mat');
load('data/w6_1z.mat');
x = w6_1x;
y = w6_1y;
z = w6_1z;

[means, mask] = simpleKMeans(y, 4);

plotKMeans(means, mask, 'zeta');