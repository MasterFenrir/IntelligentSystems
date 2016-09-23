function plot(idx, tMax, k, n, results )
%PLOT Plot the quantization error as a function of the epochs

plot(1:tMax, results);
title(['n = ',num2str(n,'%d'),       ...
             '   K = ',num2str(k,'%d')],   ... 
             'fontsize',16);
set(gca,'fontsize',16);
xlabel(['Epoch'],'fontsize',16);
ylabel(['Quantization Error'],'fontsize',16);
set(gca,'fontsize',16)
figure(idx + 1);
end

