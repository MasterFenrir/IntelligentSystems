function [  ] = plotKMeans( means, clusterMask, data )
%PLOTKMEANS Summary of this function goes here
%   Detailed explanation goes here
    colours = {'k', 'm', 'b', 'r', 'g', [0, 0.9, 0.9] , [0.67, 0.45, 0.22], [1, 0.55 0.1]};
    iptsetpref('ImshowBorder','tight');
    figure(2);
    hold off; box on; 
    axis square; hold on;
    
    for i = 1:length(means)
        cluster = data(clusterMask == i, :);
        s1 = scatter(cluster(:, 1), cluster(:, 2), 30, '.' );
        s2 = scatter(means(i, 1), means(i, 2), 150, 'filled', 'p');
        s1.MarkerEdgeColor = colours{i};
        s2.MarkerFaceColor = s1.MarkerEdgeColor;
    end

    ylabel(['Length in cm'],'fontsize',16);
    xlabel(['Hair length in cm'],'fontsize',16);
end

