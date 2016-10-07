normdist = load('normdist(1).mat');

%plotNormalDistribution(normdist.S1, normdist.S2, normdist.T);
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
   

gS1x = -40:80;%min(normdist.S1):max(normdist.S1);
gS2x = -40:80;%min(normdist.S2):max(normdist.S2);
gS1 = normpdf(gS1x, mean1, stddef1 );
gS2 = normpdf(gS2x, mean2, stddef2);

iptsetpref('ImshowBorder','tight');
figure(2);
hold off; plot(0,0); box on; 
axis square; hold on;

scatter(normdist.S1, 1:length(normdist.S1), 'bo'); 
scatter(normdist.S2, 1:length(normdist.S2), 'ro');

yyaxis right
plot(gS1x,gS1, 'b');
plot(gS2x,gS2, 'r');