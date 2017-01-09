function [r] = solve(ns)
    // Geef %t terug indien ns een semimagisch vierkant is,
    // %f indien niet.
    
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
   
endfunction
