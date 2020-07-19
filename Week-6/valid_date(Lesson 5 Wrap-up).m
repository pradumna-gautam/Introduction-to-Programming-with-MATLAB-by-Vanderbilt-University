function valid = valid_date(year, month, day)
%   scalar            positive     integer                limit
if isscalar(year)  && year  > 0 && fix(year)  == year  && ...
   isscalar(month) && month > 0 && fix(month) == month && month <= 12 && ...
   isscalar(day)   && day   > 0 && fix(day)   == day
    % Leap year: multiple of 4, but not of 100, or of 400:
    isLeap = (~mod(year, 4) && mod(year, 100) || ~mod(year, 400));
    % Valid days:
    % * month is 4,6,9,11 and days <= 30,
    % * month is 2 and days <= 28 or 29 for leap years
    % * other month and days <= 31
    valid  = (any(month == [4,6,9,11])        && day <= 30) || ...
             (any(month == [1,3,5,7,8,10,12]) && day <= 31) || ...
             (month == 2 && day <= 28 + isLeap);
else
    valid = false;
end
end
