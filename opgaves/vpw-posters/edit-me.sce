function [n] = solve(ns)
    // Reken uit hoeveel posters nog zichtbaar zijn.
    x = size(ns, "r")
    r = zeros(1,15)
    a = 0
    b = 0
    c = 0
    d = 0
    if x == 0 then
        n = 0
    else
        for i = 1:x
            a = ns(i,1)
            b = ns(i,2)
            
            r(1,a) = i
            if b <> 0 then
                for u = 0:b-1
                    r(1,a+u) = i
                end
            end
        end
        f = unique(r)
        n = length(f)-1
    end
    // Dummy toekenningen aan outputvariabelen
endfunction
