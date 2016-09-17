   function anneal = tsp(n,maxsteps,temp,met)
%  tsp(n,ms,temp,method) tries to find the shortest path 
%  that connects n randomly placed cities
%  met=1 (2) corresponds to Metropolis (threshold) algorithm
%  ms*100 is the total number of performed steps
%  temp is the initial temperature, after each 100 steps it
%  is decreased by 1%.

   close all;

   rand('state',0); cities = rand(n,2); 
   order = [1:n];  op = path(order,cities)/sqrt(n);

   plotcities(order,cities);
   stop;

   if (nargin<4)
      met =1;
   end
   if (nargin<3) 
     temp = 0.1;
   end
   temps = temp;

   lt = zeros(1,ceil(maxsteps));   
   tt = 1:ceil(maxsteps);

   for jstep=1:ceil(maxsteps);
   temp = temp*0.998;
   for ins = 1:100 
      j = ceil(rand*n); len = ceil(rand*(n/2));
      cand = reverse(order,j,len);
      np = path(cand,cities)/sqrt(n);
      diff = np-op; 

%  met=1: threshold, met=2: metropolis
      if ( (met==1 && (rand<exp(-diff/temp))||(diff<0)) || ...
           (met==2 && diff<temp))
         order = cand;
         op = np; 
      end

   end
      lt(jstep) =  op;
      curlen = path(order,cities)/sqrt(n);
      figure(1); plotcities(order,cities);
      title(['n =',num2str(n,'%3.0f'),       ...
             '   i =',num2str(jstep*100,'%8.0f'),  ... 
             '   l =',num2str(curlen,'%4.4f'),  ... 
             '   T =',num2str(temp,'%6.6f')],   ... 
             'fontsize',16);
      if (met==1) 
         xlabel(['Metropolis algorithm'],'fontsize',16);
      else 
         xlabel(['Threshold algorithm', ...
         '    T(0)=',num2str(temps,'%4.4f')],'fontsize',16);
      end
      pause(0.0001);
   end
      figure; plot(0,0); 
      hold on; plot(tt,lt,'k.'); 
      title(['n =',num2str(n,'%3.0f'),       ...
             '   l =',num2str(curlen,'%4.4f'),  ... 
             '   T-start =',num2str(temps,'%4.4f')],   ... 
             'fontsize',16);
      if (met==1) 
         xlabel(['Metropolis steps / 100'],'fontsize',16);
      else 
         xlabel(['Threshold steps /100'],'fontsize',16);
      end
         ylabel(['l'],'fontsize',16);

