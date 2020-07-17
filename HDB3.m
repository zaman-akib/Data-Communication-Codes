x=[];
y=[];
m=[1 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1];
n=length(m);
z=[];
i=1;
j=1;
V=4;
B=5;
count=0;
prv=-1;
flag=0;
len=0;
a=1;
while(i+3<n)
    if(m(i)==0 & m(i+1)==0 & m(i+2)==0 & m(i+3)==0)
        if(mod(count,2)==0)
            z=[z B 0 0 V];
            count=count+2;
            flag=1;
        elseif(mod(count,2)~=0)
            z=[z 0 0 0 V];
            count=count+1;
            flag=1;
        end
    else
        flag=0;
     if(m(i)==1) 
     count=count+1;
     end
     z=[z m(i)]; 
    end
    if(flag==1)
        i=i+4;
    else
        i=i+1;
    end   
end


k=length(m)-length(z);
len=length(z)
if(k>0)
while(k~=0)
    z=[z m(len+a)];
    a=a+1;
    k=k-1;
end
end
for j=1:length(z)
    
    if(z(j)==1)
        prv=-prv;
        x=[x j-1 j];
        y=[y prv prv];
    elseif(z(j)==4)
        x=[x j-1 j];
        y=[y prv prv];
    elseif(z(j)==5)
         prv=-prv;
        x=[x j-1 j];
        y=[y prv prv];
    elseif(z(j)==0)
        x=[x j-1 j];
        y=[y 0 0];
    end
end

plot(x,y),axis([0,20,-4,4]);