
     function  neworder = exchange(order,j,len)
% function exchange(order,j,len) reverses the sub-path
% between j and j+len 
     
     no = order; n  = length(order); pos1 =j; 

     for i = 0:len
       pos1 = j + i;
       if (pos1>n) 
          pos1=pos1-n;
       end
       pos2 = j+len - i;
       if (pos2 < 1) 
          pos2=pos2+n;
       end
       if (pos2 >n) 
          pos2=pos2-n;
       end
       no(pos1)=order(pos2);
     end

     neworder=no; 

