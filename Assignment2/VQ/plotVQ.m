function plotVQ( epoch, dataset, prototypes )
%PLOTVQ Summary of this function goes here
%   Detailed explanation goes here

hold on;
scatter(dataset(:, 1), dataset(:, 2), 300, 'r', '.'); 
scatter(prototypes(:, 1), prototypes(:, 2), 300, 'm', '.');
title(['Epoch = ',num2str(epoch,'%d'),       ...
             '   Prototypes = ',num2str(length(prototypes),'%d')],   ... 
             'fontsize',16);
set(gca,'fontsize',16);
xlabel(['X'],'fontsize',16);
ylabel(['Y'],'fontsize',16);
set(gca,'fontsize',16)
hold off;

end

