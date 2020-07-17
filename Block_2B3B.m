m=[0 0 0 1 0 0 1 1 1 0];
len=length(m);
w=[];
x=[];
y=[];

for i=1:2:len
    if(m(i)==0 & m(i+1)==0)
        w=[w 0 1 0];
    elseif(m(i)==0 & m(i+1)==1)
        w=[w 0 1 1];
    elseif(m(i)==1 & m(i+1)==0)
        w=[w 1 0 1];
    elseif(m(i)==1 & m(i+1)==1)
        w=[w 1 1 0];
    end
end

len=length(w);
prev=-1;

for j=1:len
    x=[x j-1 j];
    if(w(j)==0)
        y=[y prev prev];
    else
        y=[y -prev -prev];
    end
    prev=y(length(y));
end

plot(x,y),axis([0,length(w),-2,2]);