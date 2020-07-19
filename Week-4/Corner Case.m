function [top_left, top_right, bottom_left, bottom_right] = corners(x)
[m,n] = size(x);
top_left = x(1,1);
top_right = x(1, n);
bottom_left = x(m,1);
bottom_right = x(m, n);
end
