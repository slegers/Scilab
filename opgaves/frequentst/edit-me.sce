function [r] = solve(ns)
    // Zoek het vaakst voorkomende getal in de
    // gegeven rijmatrix.
    frequency = 0
   // r = zeros(length(ns),1)
    r = []
    for i = 1:length(ns)
        var = countElement(i,ns)
        if frequency < var then
           frequency = countElement(i,ns)
        end
     end
     
     for i = 1:length(ns)
      if countElement(i,ns) == frequency then  
          disp(r)
          r(1,size(r)+1) = ns(i) 
         end
    end
    r = unique(r)
    // Dummy toekenningen aan outputvariabelen

endfunction

function [aantal] = countElement(numb,row)
    aantal = 0
    for i =1:length(row)
        if row(numb) == row(i) then
            aantal = aantal + 1
        end
    end
endfunction
