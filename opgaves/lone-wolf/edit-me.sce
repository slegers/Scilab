function [lone_wolf] = solve(ns)
    // Zoek de lone wolf.
    for i = 1:length(ns)
        value = ns(i)
        count = 0
        for(j = 1:length(ns))
           if value == abs(ns(j))
                count = count + 1
           end
        end
        if (count == 1)
            lone_wolf = value
        end
    end
endfunction
