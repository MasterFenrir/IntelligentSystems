     function kt = plotcities(order,cities)
% function plotcities(order,cities) displays
% the cities and the current path in [0,1]x[0,1]

     ordcit = cities; nn = length(order);
     citx = zeros(nn+1,1); city = zeros(nn+1,1);

     hold off; plot(0,0); box on; 
     axis square; hold on;
     
     for i=1:nn
      citx(i) = cities(order(i),1);
      city(i) = cities(order(i),2);
     end
      citx(nn+1) = cities(order(1),1);
      city(nn+1) = cities(order(1),2);
   
     plot(citx,city,'k.','MarkerSize',15);
     plot(citx,city);
     figure(1);

