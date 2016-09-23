function plot(tMax, k, n, results )
%PLOT Summary of this function goes here
%   Detailed explanation goes here

plot(1:tMax, results);
title(['n = ',num2str(n,'%d'),       ...
             '   K = ',num2str(k,'%d')],   ... 
             'fontsize',16);
set(gca,'fontsize',16);
xlabel(['Epoch'],'fontsize',16);
ylabel(['Quantization Error'],'fontsize',16);
set(gca,'fontsize',16)
end

