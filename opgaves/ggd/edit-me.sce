function [ggd] = solve(a,b)
    ggd = gcd([a b]);
    ggd = double(ggd)
endfunction
