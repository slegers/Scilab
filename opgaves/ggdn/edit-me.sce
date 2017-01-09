function [n] = solve(ns)
    // Gegeven een rijmatrix ns met positieve gehele getallen,
    // zoek de ggd van al van deze getallen.
    s = mallest(ns)
    ggd = 9999
    for i = 1:length(ns)
        if ggd >gcd([ns(i),s]) then
            ggd = gcd([ns(i),s]);
        end
              
    end
    //ggd = gcd([a b]);
    ggd = double(ggd)
           
    // Dummy toekenningen aan outputvariabelen
    n =ggd
endfunction

function [small] = mallest(row)
    s = 9999999
    for i = 1:length(row)
        if s > row(i) then
            s = row(i)
        end
    end
    small = s
endfunction
