normdist = load('normdist(1).mat');

%  plotScatter(normdist.S1, normdist.S2, normdist.T);
%  plotNormalDistributions(normdist.S1, normdist.S2);
%   plotPosteriorProbability(normdist.S1, normdist.S2, normdist.T);



% decisionBoundarySolver(normdist.S1, normdist.S2);

treeThing = load('dataAEX.mat');
treeLabels = load('labelsAEX.mat');
% dists = pdist(treeThing.data);
tree = linkage(treeThing.data, 'complete');
dendrogram(tree, 'Labels', treeLabels.labels);