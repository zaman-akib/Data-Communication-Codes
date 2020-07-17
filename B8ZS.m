m=[1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0];
len=length(m);
w=[];
x=[];
y=[];
prev=1;

i=1;
while(i+7<len)
    if(m(i)==0 & m(i+1)==0 & m(i+2)==0 & m(i+3)==0 & m(i+4)==0 & m(i+5)==0 & m(i+6)==0 & m(i+7)==0)
        w=[w 0 0 0 prev -prev 0 -prev prev];
        prev=1;
        i=i+8;
    elseif(m(i)==0)
        w=[w 0];
        i=i+1;
    elseif(m(i)==1)
        w=[w 1];
        prev=1;
        i=i+1;
    end
end

a=1;
k=length(m)-length(w);
len=length(w)
if(k>0)
while(k~=0)
    w=[w m(len+a)];
    a=a+1;
    k=k-1;
end
end

for j=1:length(w)
    x=[x j-1 j];
    if(w(j)==0)
        y=[y 0 0];
    else
        y=[y w(j) w(j)];
    end
end

plot(x,y),axis([0,length(w),-4,4]);