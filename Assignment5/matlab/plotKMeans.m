function [  ] = plotKMeans( means, clusters, name )
%PLOTKMEANS Summary of this function goes here
%   Detailed explanation goes here
    colours = {'k', 'm', 'b', 'r', 'g', [0, 0.9, 0.9] , [0.67, 0.45, 0.22], [1, 0.55 0.1]};
    k = length(means);
    fullName = strcat('img/', name, num2str(k));
    
    iptsetpref('ImshowBorder','tight');
    figure('name', fullName);
    hold off; box on; 
    axis square; hold on;
    
    for i = 1:k
        cluster = clusters{i};
        s1 = scatter(cluster(:, 1), cluster(:, 2), 30, '.' );
        s2 = scatter(means(i, 1), means(i, 2), 150, 'filled', 'p');
        s1.MarkerEdgeColor = colours{i};
        s2.MarkerFaceColor = s1.MarkerEdgeColor;
    end

    ylabel(['y'],'fontsize',16);
    xlabel(['x'],'fontsize',16);
    
    print(fullName, '-dpng')
end

