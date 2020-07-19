function valid = valid_date(year, month, day)
% Anonymous function to check for positive integer scalar values:
ok = @(x) isscalar(x) && x > 0 && fix(x) == x;
valid = false;  % Default answer
% Check if all inputs are clean:
if ok(year) && ok(month) && month <= 12 && ok(day)
    % Check if it is a leap year:
    isLeap = (~mod(year, 4) && mod(year, 100) || ~mod(year, 400));
    
    % Number of days per month, consider leap year for februrary:
    d      = [31, 28+isLeap, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    
    % The actual comparison:
    valid  = (day <= d(month));
end
