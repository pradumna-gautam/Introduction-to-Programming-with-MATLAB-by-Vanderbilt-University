function charnum = char_counter(fname,character)
    if ischar(character)==0 | fopen(fname)==-1
        charnum=-1
    else
        A=double(char(fileread(fname)))';
        charnum=sum(A==double(character));
    end
end
