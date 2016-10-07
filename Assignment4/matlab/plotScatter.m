function [  ] = plotScatter( S1, S2, T )
%PLOTNORMALDISTRIBUTION Summary of this function goes here
%   Detailed explanation goes here

    figure(1);
    hold off; plot(0,0); box on; 
    axis square; hold on;

    scatter(1:length(S1), S1, 'bo'); 
    scatter(1:length(S2), S2, 'ro');
    scatter(1:length(T), T, 'ks');
    set(gca,'fontsize',16);
    xlabel(['X'],'fontsize',16);
    ylabel(['Y'],'fontsize',16);
    set(gca,'fontsize',16)

end

