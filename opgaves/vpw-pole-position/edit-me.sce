function [rs] = solve(ns,ds)
    // Reken de startpositie uit van de wagens
    rs = ns
    
    a = length(ns)
    b = max(ns)
    
    for i = 1:a
        for u = 1:b
            if ds(1,i) == u then
                x = rs(1,i)
                rs(1,i) = rs(1,i+u)
                rs(1,i+u) = x
            end
        end
    end
    // Dummy toekenningen aan outputvariabelen
endfunction
