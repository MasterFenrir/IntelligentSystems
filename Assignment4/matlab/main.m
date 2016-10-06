normdist = load('normdist(1).mat');

plotNormalDistribution(normdist.S1, normdist.S2, normdist.T);
res = mle(normdist.S1);
mean1 = res(1);
stddef1 = res(2);
res2 = mle(normdist.S2);
mean2 = res2(1);
stddef2 = res2(2);

xMin = min(normdist.S1);
xMax = max(normdist.S1);

if min(normdist.S2) < xMin
    xMin = min(normdist.S2);
end

if max(normdist.S2) > xMax
    xMax = max(normdist.S2);
end
   

x = xMin: 0.1 : xMax;
gS1 = gaussmf(x, [stddef1 mean1]) * 100;
gS2 = gaussmf(x,[stddef2 mean2]) * 100;

iptsetpref('ImshowBorder','tight');
figure(2);
hold off; plot(0,0); box on; 
axis square; hold on;
plot(x,gS1);
plot(x,gS2);
scatter(1:length(normdist.S1), normdist.S1, 'bo'); 
scatter(1:length(normdist.S2), normdist.S2, 'ro');