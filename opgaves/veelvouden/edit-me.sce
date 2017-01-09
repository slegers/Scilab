function [r] = solve(n)
    // Tel het aantal getallen tussen 0 en N die veelvoud zijn van 2 of 5.
    count = 0
    for i = 0:n
        if(modulo(i,2) == 0) then
            count = count + 1
        else if (modulo(i,5) == 0) then 
                count = count + 1
            end
        end 
    end
    r = count
endfunction
