function [sum] = solve(ns,goal)
    // Gegeven een rijmatrix ns en een getal goal,
    // tel hoeveel sommen a + b == goal je kan vinden
    // waarbij a en b uit ns komen.
    // 
    // De sommen moeten uniek zijn: 3 + 5 en 5 + 3 tellen als
    // een enkele som.
    // 
    // Bijvoorbeeld, stel ns = [1, 1, 2, 3, 4] en goal = 5.
    // De mogelijke sommen zijn dan 1 + 4 en 2 + 3, m.a.w. 2 unieke sommen.

//remove doubles if size > 1
   
   if length(ns) > 1 then
   
    seen = zeros(1,max(ns))
    for (i = 1:length(ns))
        //disp (ns,i,seen)
        if (seen(ns(i)) == 1 ) then
            ns(i) = %inf
         else 
             seen(ns(i)) = 1
         end
    end
    end
    
    sum = 0
    for (i = 1:length(ns))
        for (j = 1:length(ns))
           if (ns(i) + ns(j) == goal) then
               sum = sum + 1
           end 
        end
    end
        sum = int((sum/2) + 0.5)
    disp ( sum,"sum")

endfunction
