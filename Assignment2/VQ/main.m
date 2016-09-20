load('w6_1x.mat');
load('w6_1y.mat');
load('w6_1z.mat');

[xP, xN] = size(w6_1x);
[yP, yN] = size(w6_1y);
[zP, zN] = size(w6_1z);

K = 3;
mu = 'constantProduct';
tMax = 2;
FEVAL()