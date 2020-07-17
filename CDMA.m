w1=input('Enter the value of w1: ');
d=[];
c=[];

w2=[w1 w1,
    w1 -w1];
w4=[w2 w2,
    w2 -w2];

c(1,:)=w4(1,:);
c(2,:)=w4(2,:);
c(3,:)=w4(3,:);
c(4,:)=w4(4,:);

for i=1:4
    a=input('Data: ','s');
       if(a=='0')
           d(i,:)=c(i,:).*[-1 -1 -1 -1];
       elseif(a=='1')
           d(i,:)=c(i,:).*[1 1 1 1];
       else
           d(i,:)=[0 0 0 0];
       end
end

r1=d(1,:)
r2=d(2,:)
r3=d(3,:)
r4=d(4,:)

channel=r1+r2+r3+r4

for i=1:4
x=[];
y=[];
for j=1:4
    x=[x j-1 j];
    y=[y d(i,j) d(i,j)];
end
subplot(5,1,i);
plot(x,y),axis([0,4,-2,2]);
end

x=[];
y=[];
for i=1:4
    x=[x i-1 i];
    if(channel(i)==0)
        y=[y 0 0];
    else
        y=[y channel(i) channel(i)];
    end
end
subplot(5,1,5);
plot(x,y),axis([0,4,-4,4]);
