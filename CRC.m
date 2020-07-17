d=[1 0 0 1 1];
divisor=[1 0 1 1];
n=length(divisor)-1;
result=[];
x=[0 0 0 0];
z=[];
code=d;

for i=1:n
    code=[code 0];
end

result=code(1:length(divisor))
z=code(length(divisor)+1:length(code))

for i=1:length(z)
    if(result(1)==1)
        result=bitxor(result,divisor);
    elseif(result(1)==0)
        result=bitxor(result,x);
    end
    
    result=result(2:4);
    result=[result z(i)];
end

result=result(2:4);
codeword=[d result]