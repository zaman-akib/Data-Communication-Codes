a=0;
b=3;
n=10;
p=1;

h=(b-a)/10;

for i=a:h:b
    x(p)=i;
    y(p)=(x(p).^2)-(2.*x(p))-8;
    p=p+1;
end

len=length(y);

r1=y(1)+y(len);
r2=0;
r3=0;

for i=2:len-1
    if(mod(i,2)~=0)
        r2=r2+y(i);
    elseif(mod(i,2)==0)
        r3=r3+y(i);
    end
end

x
y
result=(h/3).*(r1+2.*r2+4.*r3)
