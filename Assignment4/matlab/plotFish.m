function [ ] = plotFish( fish )
%PLOTFISH Summary of this function goes here
%   Detailed explanation goes here
    
    iptsetpref('ImshowBorder','tight');
    figure(2);
    hold off; box on; 
    axis square; hold on;
    
    seabass = (fish.p_seabass * (3/4)) ./ ((fish.p_seabass * (3/4)) + (fish.p_salmon * (1/4)));
    salmon = 1 - seabass;
    
    plot(fish.l, seabass);
    plot(fish.l, salmon);
    ylabel(['Posterior probability'],'fontsize',16);
    xlabel(['Length in cm'],'fontsize',16);
    
    legend('Seabass', 'Salmon');

end

