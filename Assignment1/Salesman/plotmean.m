n = 250;
maxsteps = 1000;
temp = [1, 0.5, 0.2, 0.1, 0.05, 0.02, 0.01, 0.005, 0.002, 0.001];
method = 1;

meanresults = zeros(size(temp));
standarddeviationresults = zeros(size(temp));

% Try the different temperatures
for index = 1:length(temp)
    results = tsp(n, maxsteps, temp(index), method);    
    lastFifty = results(length(results) - 49:length(results));
    meanresults(index) = mean(lastFifty);
    standarddeviationresults(index) = sqrt(var(lastFifty));
    fprintf('mean: %f \n', mean(lastFifty));
    fprintf('varience: %f \n', var(lastFifty));
end


% Plot the results in a graph
figure(3); semilogx(0,0); hold on;
semilogx(temp, meanresults);
errorbar(temp, meanresults, standarddeviationresults)
title(['n = ',num2str(n,'%d'),       ...
             '   Steps = ',num2str(maxsteps,'%d')],   ... 
             'fontsize',16);
set(gca,'fontsize',16);
xlabel(['Temperatures'],'fontsize',16);
ylabel(['Mean'],'fontsize',16);
set(gca,'fontsize',16)