function summa = halfsum(x)
[row,col] = size(x);
allsum=0;
for n=1:row
    for c=n:col
        allsum=x(n,c)+allsum;
    end
end
summa=allsum;
