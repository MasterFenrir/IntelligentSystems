function plotVQ( dataset, prototypes )
%PLOTVQ Summary of this function goes here
%   Detailed explanation goes here

hold on;
scatter(dataset(:, 1), dataset(:, 2), 300, 'r', '.'); 
scatter(prototypes(:, 1), prototypes(:, 2), 300, 'm', '.');
hold off;

end

