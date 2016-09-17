n = 100;
maxsteps = 200;
temp = [0.001, 0.002, 0.005, 0.01, 0.02, 0.05, 0.1, 0.2, 0.5];
method = 1;

meanresults = zeros(size(temp));
standarddeviationresults = zeros(size(temp));

% Try the different temperatures
for index = 1:length(temp)
    results = tsp(n, maxsteps, temp(index), method);
    meanresults(index) = mean(results);
    standarddeviationresults(index) = sqrt(var(results));
end

% Plot the results in a graph
figure(3); semilogx(0,0); hold on;
semilogx(temp, meanresults);
errorbar(temp, meanresults, standarddeviationresults)
title(['n =',num2str(n,'%d'),       ...
             '   Steps =',num2str(maxsteps,'%d')],   ... 
             'fontsize',16);
xlabel(['Temperatures'],'fontsize',16);
ylabel(['Mean'],'fontsize',16);