function [max] = solve(ns)
    m = unique(ns);
    if (length(m) <= 1) then
        max = %f;
    else
        max = m(length(m) - 1);
    end
endfunction
