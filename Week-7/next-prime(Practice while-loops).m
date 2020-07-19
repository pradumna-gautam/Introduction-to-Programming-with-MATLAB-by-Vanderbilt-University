function k = next_prime(n)
if n < 1 || ~isscalar(n) || n == ~fix(n)
    error('error');
else
    i = n + 1;
    while i > n
        if isprime(i)
           k = i;
           break;
        else
            i = i + 1;
            
    end
    end
end
