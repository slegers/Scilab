function [faculteit] = solve(n)
    if n < 0 then
        error("the variable should be positive.")
    end
    if n==1 | n==0 then
        faculteit = 1
    else
        faculteit = n * solve(n-1)
    end
    
endfunction
