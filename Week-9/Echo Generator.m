function[output] = echo_gen(input, fs, delay, amp)
numberofdelaysamples = round(delay*fs); 
soundvectorplusecho = zeros(numberofdelaysamples + length(input),1); 
soundvectorbeforecho = soundvectorplusecho; 
for i = 1:length(input) 
    soundvectorplusecho(i + numberofdelaysamples) = input(i)*amp;
    soundvectorbeforecho(i) = input(i); 
end
fullsoundvector = soundvectorbeforecho + soundvectorplusecho; 
range = abs(fullsoundvector); 
maxrange = max(range);
if maxrange>1 
   fullsoundvector = fullsoundvector/maxrange; 
end
output = fullsoundvector; 
end 
