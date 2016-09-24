function plot(setNumber, tMax, k, n, results )
%PLOT Plot the quantization error as a function of the epochs

    figure(setNumber);
    hold off; plot(0,0); box on; 
    axis square; hold on;

    plot(1:tMax, results);
    title(['n = ',num2str(n,'%f'),       ...
                 ' K = ',num2str(k,'%d')],   ... 
                 'fontsize',16);
    set(gca,'fontsize',16);
    xlabel(['Epoch'],'fontsize',16);
    ylabel(['Quantization Error'],'fontsize',16);
    set(gca,'fontsize',16)

end

