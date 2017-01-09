function [sum] = solve(n)
    rest = 0;
    sum = 0;
    while n <> 0
        rest = modulo(n,10);
        n = (n - rest)/10;
        sum = sum + rest;
    end
endfunction
