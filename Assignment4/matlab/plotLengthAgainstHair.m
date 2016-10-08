function [  ] = plotLengthAgainstHair( body_length, hair_length )
%PLOTLENGTHAGAINSTHAIR Summary of this function goes here
%   Detailed explanation goes here

    iptsetpref('ImshowBorder','tight');
    figure(2);
    hold off; box on; 
    axis square; hold on;
    
    scatter(body_length, hair_length)
    
    ylabel(['Length in cm'],'fontsize',16);
    xlabel(['Hair length'],'fontsize',16);

end

