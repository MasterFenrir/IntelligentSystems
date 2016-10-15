function [  ] = plotLengthAgainstHair( hair_length, body_length )
%PLOTLENGTHAGAINSTHAIR Plot the length of a person against the
% length of their hair

    iptsetpref('ImshowBorder','tight');
    figure(2);
    hold off; box on; 
    axis square; hold on;
    
    scatter(hair_length, body_length)
    ylabel(['Length in cm'],'fontsize',16);
    xlabel(['Hair length in cm'],'fontsize',16);
end

