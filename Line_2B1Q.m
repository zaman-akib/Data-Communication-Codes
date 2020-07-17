m=[0 0 1 1 0 1 1 0 0 1];
len=length(m);
x=[];
y=[];
prev=1;
j=1;

for i=1:2:len
    x=[x j-1 j];
    if(m(i)==0 & m(i+1)==0)
       if(prev>0)
           y=[y 1 1];
       else
           y=[y -1 -1];
       end
    elseif(m(i)==0 & m(i+1)==1)
       if(prev>0)
           y=[y 3 3];
       else
           y=[y -3 -3];
       end
    elseif(m(i)==1 & m(i+1)==0)
       if(prev>0)
           y=[y -1 -1];
       else
           y=[y 1 1];
       end
    elseif(m(i)==1 & m(i+1)==1)
       if(prev>0)
           y=[y -3 -3];
       else
           y=[y 3 3];
       end
    end
    j=j+1;
    prev=y(length(y));
end

plot(x,y),axis([0,5,-4,4]);