
  function t = path(ord,cities) 

% function path(...) returns the length
% of the trip when visiting the cities  
% in the order specified by ord

  trip = 0;
% cities 1 to n-1 
  for i=1:length(ord)-1
      piece = cities(ord(i+1),:)-cities(ord(i),:);  
      trip  = trip +  sqrt(piece*piece'); 
  end
% add distance from n to 1  
      piece = cities(ord(1),:)-cities(ord(length(ord)),:) ;  
      trip  = trip +  sqrt(piece*piece'); 

  t = trip;
