function [  ] = plotScatter( S1, S2, T )
%PLOTSCATTER Plot a scatter of the sets of given points

    figure(1);
    hold off; plot(0,0); box on; 
    axis square; hold on;

    scatter(1:length(S1), S1, 'bo'); 
    scatter(1:length(S2), S2, 'ro');
    scatter(1:length(T), T, 'ks');
    set(gca,'fontsize',16);
    xlabel(['Element number'],'fontsize',16);
    ylabel(['Value'],'fontsize',16);
    set(gca,'fontsize',16)

    %print('img/sc', '-dpng')
end

