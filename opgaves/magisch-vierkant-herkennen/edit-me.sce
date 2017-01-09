function [r] = solve(ns)
    // Gegeven een matrix ns.
    // De functie geeft %t als ns een magisch vierkant is, %f als dat niet zo is
    r = %t
    // numbercount
    for (num = 1:9)
        numcount = 0
        for (i = 1:size(ns,"r"))
           for (j = 1:size(ns,"c"))
                if (ns(i,j) == num) then
                     numcount = numcount + 1
                end
           end
        end
        if (numcount > 1) then
            r = %f
        end
    end
    
    //horizontal en vertical check
    for (i = 1:size(ns,"c"))
        for (j = 1:size(ns,"r"))
           if (sum(ns(i,:)) <> sum(ns(:,j))) then
               r = %f
           end
        end
    end
    
    //diagonal check
    horsum = 0
    for (i = 1:size(ns,"c"))
        horsum = horsum + ns(i,i)
    end
    if (horsum <> sum(ns(1,:))) then
        r = %f
    end
endfunction
