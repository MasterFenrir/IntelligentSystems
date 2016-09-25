function plotVQ( setNumber, epoch, dataset, prototypes )
%PLOTVQ Plot the current state of the quantization vector unsupervised
%learning

    figure(setNumber);
    hold off; plot(0,0); box on; 
    axis square; hold on;

    scatter(dataset(:, 1), dataset(:, 2), 300, 'r', '.'); 
    scatter(prototypes(:, 1), prototypes(:, 2), 400, 'b', '.');
    title(['Epoch = ',num2str(epoch,'%d'),       ...
                 ' Prototypes = ',num2str(length(prototypes),'%d')],   ... 
                 'fontsize',16);
    set(gca,'fontsize',16);
    xlabel(['X'],'fontsize',16);
    ylabel(['Y'],'fontsize',16);
    set(gca,'fontsize',16)
%     pause(1);
end

