load('w6_1x.mat');
load('w6_1y.mat');
load('w6_1z.mat');

[xP, xN] = size(w6_1x);
[yP, yN] = size(w6_1y);
[zP, zN] = size(w6_1z);

K = 3;
n = 0.1;
mu = 'constantProduct';
tMax = 2;
FEVAL()

% Initialize the prototypes by selecting random data points
% From 1 to tMax:
%   Shuffle data
%   for each datapoint, compare to prototypes
%   Protype that is closest gets updated by n
%   Plot datapoints
%   Evaluate the quantization error Hvq
% Plot the quantization error as a function of t
