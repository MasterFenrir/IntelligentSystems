% normdist = load('normdist(1).mat');
% 
% 
%   plotScatter(normdist.S1, normdist.S2, normdist.T);
%   plotNormalDistributions(normdist.S1, normdist.S2);
%   plotPosteriorProbability(normdist.S1, normdist.S2, normdist.T);
% [first, second] = decisionBoundarySolver(normdist.S1, normdist.S2);
%  plotClassified(normdist.S1, normdist.S2, normdist.T, first, second);
% [p1, p2] = priorProbability(normdist.S1, normdist.S2);
% 
% [S1first, S1second] = plotCDF(p1, normdist.S1, -40:0.05:100, first, second, 'S1_CDF');
% 
% missClassChanceS1 = S1second - S1first
% 
% [S2first, S2second] = plotCDF(p2, normdist.S2, -40:0.05:100, first, second, 'S2_CDF');

% missClassChanceS2 = (1 - S2second) + S2first

% decisionBoundarySolver(normdist.S1, normdist.S2);

treeThing = load('dataAEX.mat');
treeLabels = load('labelsAEX.mat');
% dists = pdist(treeThing.data);
tree = linkage(treeThing.data, 'single', 'correlation');
dendrogram(tree, 'Labels', treeLabels.labels);
