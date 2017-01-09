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
            disp numcount fail
        end
    end
    
    //horizontal en vertical check
    for (i = 1:size(ns,"c"))
        for (j = 1:size(ns,"r"))
           if (sum(ns(i,:)) <> sum(ns(:,j))) then
               r = %f
               disp virt of hor fail
           end
        end
    end
    
    // exctended diagonal check
    horsum = 0
    for (i = 1:size(ns,"c"))
        horsum = horsum + ns(i,i)
    end
disp horsum
disp (horsum)

    matrixWrap = zeros(size(ns,"r"),size(ns,"r")*2)
    for (i = 1:size(ns,"r")*2)
        offset = 0
        if (i > size(ns,"r")) then
            offset = size(ns,"r")
        end
       for (j = 1:size(ns,"c"))
          matrixWrap(j,i) = ns(j,i-offset) 
       end 
    end
        
disp (matrixWrap) 
    fuckyoufucklab = size(matrixWrap,"c") - size(matrixWrap,"r")
    disp (fuckyoufucklab)
    for (i = 0:fuckyoufucklab)
        localsum = 0
        for (j = 1:size(matrixWrap,"r"))
           disp (i , "i" ,j , "j")
           disp (i+j)
           localsum = localsum + matrixWrap(j,j+i)
        end
        disp localsum
        disp (localsum)
        if (localsum <> horsum ) then
            r = %f
        end
    end
disp done
endfunction
