function [n] = solve(ns)
    last = 0;
    n = 0;
    for i = 1:length(ns)
        if ns(i) < last then
            last = ns(i);
        else
            n = n + 1;
            last = ns(i);
        end
    end
endfunction
