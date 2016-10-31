normdist = load('normdist(1).mat');

 plotScatter(normdist.S1, normdist.S2, normdist.T);
 plotNormalDistributions(normdist.S1, normdist.S2);
 plotPosteriorProbability(normdist.S1, normdist.S2, normdist.T);

% [size1, ~] = size(normdist.S1);
% [size2, ~] = size(normdist.S2);
% pw1 = size1 / (size1 + size2);
% pw2 = size2 / (size1 + size2);
% pw1
% pw2

% treeThing = load('dataAEX.mat');
% treeLabels = load('labelsAEX.mat');
% tree = linkage(treeThing.data);
%  dendrogram(tree, 'Labels', treeLabels.labels);