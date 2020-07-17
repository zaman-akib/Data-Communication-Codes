x=[];
y=[];
m = [0 0 0 1 0 0 0 1 0 1 0 1 0 0 1 1 0 1 0 1 0 0 0 0];
n=length(m);
w=[];
z=[2];
i=1;
f=2;
while(i+7<=n)
    if(m(i)==0 & m(i+1)==0 & m(i+2)==0 & m(i+3)==1 & m(i+4)==0 & m(i+5)==0 & m(i+6)==0 & m(i+7)==1)
        z=[z 0];
        if(z(f)~=z(f-1))
        
            w=[w -1 0 -1 0 1 1];
        else
            w=[w 1 0 1 0 -1 -1];
        end
    elseif (m(i)==0 & m(i+1)==1 & m(i+2)==0 & m(i+3)==1 & m(i+4)==0 & m(i+5)==0 & m(i+6)==1 & m(i+7)==1)
        z=[z 1];
        if(z(f)~=z(f-1))
        
            w=[w -1 1 -1 1 1 0];
        else
            w=[w 1 -1 1 -1 -1 0];
        end
    elseif (m(i)==0 & m(i+1)==1 & m(i+2)==0 & m(i+3)==1 & m(i+4)==0 & m(i+5)==0 & m(i+6)==0 & m(i+7)==0)
          z=[z 1];
        if(z(f)~=z(f-1))
        
            w=[w 1 -1 -1 1 0 1];
        else
            w=[w -1 1 1 -1 0 -1];
        end
    end
    i=i+8;
    f=f+1;
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
plot(x,y),axis([0,20,-2,2]);

