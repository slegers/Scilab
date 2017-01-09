function [lone_wolf] = solve(ns)
    ns = gsort(ns, 'g', 'i');
    temp = 0
    for i = 1:length(ns)
        if (i <> ns(i))
            temp = i;
            break;
        end
    end
    
    if (temp == 0) then
        lone_wolf = length(ns) + 1;
    else
        lone_wolf = temp;
    end
endfunction
