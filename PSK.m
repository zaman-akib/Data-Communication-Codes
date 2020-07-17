m=[1 0 1 1 0];
len=length(m);
sig=[];
t=[0:0.001:len];
x=[];
y=[];

total=len/0.001;
each=total/len;

car=5.*sin(2.*pi.*10.*t);

for i=1:len
    x=[x i-1 i];
    if(m(i)==0)
        y=[y 0 0];
    else
        y=[y 1 1];
    end
end

subplot(3,1,1);
plot(x,y),axis([0,len,-2,2]);

for i=1:len
    for j=((i-1))*each:(i*each)
        if(m(i)==1)
            sig(j+1)=car(j+1);
        else
            sig(j+1)=-car(j+1);
        end
    end
end


subplot(3,1,2);
plot(t,car);

subplot(3,1,3);
plot(t,sig);