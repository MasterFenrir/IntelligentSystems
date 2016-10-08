function [  ] = plotLengthAgainstHair( hair_length, body_length )
%PLOTLENGTHAGAINSTHAIR Summary of this function goes here
%   Detailed explanation goes here

    iptsetpref('ImshowBorder','tight');
    figure(2);
    hold off; box on; 
    axis square; hold on;
    
    scatter(hair_length, body_length)
    ylabel(['Length in cm'],'fontsize',16);
    xlabel(['Hair length in cm'],'fontsize',16);
    
    xl = xlim;
    x = xl(1):xl(2);
    y= 0.5*x + 163;
    plot(x,y)
end

