x=[7 11 12 1 6];
len=length(x);
sum=0;

for i=1:len
    sum=sum+x(i);
end

bin_sum=flip(de2bi(sum))
n=length(bin_sum);
k=n-4;
a=bin_sum(1:k);
for i=1:k
   a=[0 a];
end
b=bin_sum(k+1:6);

bin_sum=bitxor(a,b);

bin_sum=flip(not(bin_sum));

sum=bi2de(bin_sum);

send=[x sum]

rec=[7 11 12 1 6 8];
recieved=rec

sum=0;

len=length(recieved);
for i=1:len
    sum=sum+recieved(i);
end

bin_sum=flip(de2bi(sum));
n=length(bin_sum);
k=n-4;
a=bin_sum(1:k);
for i=1:k
   a=[0 a];
end
b=bin_sum(k+1:6);

bin_sum=bitxor(a,b);

bin_sum=flip(not(bin_sum));

sum=bi2de(bin_sum);

if(sum==0) 'Data recieved successfully.'
else 'Error in transmission.'
end

