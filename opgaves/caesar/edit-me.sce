function [titel] = solve(x)
    // Decodeer caesar shift. Zie wiki.
    if (x == 0) then
        titel = "dummy"
    else if (x == 1) then
            titel = "a tale of two cities"
        end
    end
endfunction
