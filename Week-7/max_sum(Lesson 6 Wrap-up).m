function [summa, index] = max_sum(v,n) %function decleration
N = length(v) ;                        %checking the length of vector v to compare with n   
sumx = [];                             %initiating a null vector to store the sum of consecutive n elements
if n>N                                 %checking if given n is greater than the length of the vector v
    summa=0;                           %if n>N summation is immpossible hence assign summa =0 and index=0 (say)
    index=-1;
else                                   %if n<N
   for i = 1:N-n+1;                    %value i runs from 1 to (N+1-n) 
      sumx = [sumx sum(v(i:(i+n-1)))] ;%storing the summ of n consecutive elements in sumx vector till the condition satisfy
   end
   [summa,index] = max(sumx);          %summa gives the maximum sum of the set in sumx vector and index gives the maximum's index value 
end
end
