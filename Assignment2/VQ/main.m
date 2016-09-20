load('w6_1x.mat');
load('w6_1y.mat');
load('w6_1z.mat');

[m_x, n_x] = size(w6_1x);
[m_y, n_y] = size(w6_1y);
[m_z, n_z] = size(w6_1z);

K = 3;
mu = 'constantProduct';
tMax = 2;
FEVAL()