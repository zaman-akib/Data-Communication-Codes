d=[1 0 0 1];
divisor=[1 0 1 1];
n=length(divisor)-1;
result=[];
x=[0 0 0 0];

result=d;

for i=1:n
    if(result(1)==1)
        result=bitxor(result,divisor);
    elseif(result(1)==0)
        result=bitxor(result,x);
    end
    
    result=result(2:4);
    result=[result 0];
end

result=result(2:4);
codeword=[d result]