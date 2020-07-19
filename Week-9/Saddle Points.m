function indices=saddle(M)
    indices=[]; c=1;
    [row,col]=size(M);
    for I=1:row
    for j=1:col
    if M(I,j)== max(M(I,1:col)) && M(I,j)==min(M(1:row,j))
    indices(c,1)=I;
    indices(c,2)=j; 
    c=c+1;
    end
    end
    end
