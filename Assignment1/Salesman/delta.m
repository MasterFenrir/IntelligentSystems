
  function diff = delta(ord,cities,j,k) 

% function delta(...) determines the change
% of the path length when the sub-path between
% j and k is reversed 

   nn = length(ord); jj = j; kk=k;
   if (kk>nn)
    kk = kk-nn;
   end
   jl = jj-1; kr = kk+1;

   if (jl ==0) 
      jl=nn;
   end
   if (kr ==nn+1)
      kr=1;
   end
      
      piece = cities(ord(jl),:)-cities(ord(jj),:);  
      p1 = sqrt(piece*piece'); 
      piece = cities(ord(kr),:)-cities(ord(kk),:);  
      p2 = sqrt(piece*piece'); 
      piece = cities(ord(jl),:)-cities(ord(kk),:);  
      p1new = sqrt(piece*piece'); 
      piece = cities(ord(kr),:)-cities(ord(jj),:);  
      p2new = sqrt(piece*piece'); 

   diff = p2new- p2 + p1new - p1;

