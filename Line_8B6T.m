m=[0 0 0 1 0 0 0 1 0 1 0 1 0 0 1 1];
len=length(m);
w=[];
x=[];
y=[];
j=0;

for i=1:8:len
    if(m(i)==0 & m(i+1)==0 & m(i+2)==0 & m(i+3)==1 & m(i+4)==0 & m(i+5)==0 & m(i+6)==0 & m(i+7)==1)
        w=[w -1 0 -1 0 1 1];
    elseif(m(i)==0 & m(i+1)==1 & m(i+2)==0 & m(i+3)==1 & m(i+4)==0 & m(i+5)==0 & m(i+6)==1 & m(i+7)==1)
        w=[w -1 1 -1 1 1 0];
    end
end

k=length(w);
for j=1:k
    if(w(j)==0)
        x=[x j-1 j];
        y=[y 0 0];
    elseif(w(j)==-1)
        x=[x j-1 j];
        y=[y -1 -1];
        
        elseif(w(j)==1)
        x=[x j-1 j];
        y=[y 1 1];
    end      
end

plot(x,y),axis([0,12,-2,2]);