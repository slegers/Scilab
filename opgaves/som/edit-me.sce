function [sum] = solve(ns)
    // Gegeven een rijmatrix ns van getallen, bereken de som van de getallen.
    sum = 0
for (i = 1:length(ns))
    sum = sum + ns(i)
end
endfunction
