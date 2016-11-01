function [ ] = plotDendogram( )
%PLOTDENDOGRAM Summary of this function goes here
%   Detailed explanation goes here
treeThing = load('dataAEX.mat');
treeLabels = load('labelsAEX.mat');
figure(1);
tree = linkage(treeThing.data, 'complete', 'euclidean');
dendrogram(tree, 'Labels', treeLabels.labels);
end

