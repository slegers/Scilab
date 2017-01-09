function [teller,noemer] = solve(n_elementen,min_cycles)
    // Reken uit hoeveel kans er bestaat dat een permutatie
    // van {{{n}}} elementen een cyclus bevat van meer (>=) dan {{{k}}} elementen.
    // 
    // De kans moet uitgedrukt worden als een vereenvoudigde breuk.
    // Bijvoorbeeld, 6/8 wordt teller=3, noemer=4.

    // Dummy toekenningen aan outputvariabelen
    if (min_cycles > n_elementen) then
        teller = 0;
        noemer = 1;
    elseif (min_cycles == 0 | min_cycles == 1) then
        teller = 1;
        noemer = 1;
    elseif (min_cycles == 2) then
        noemer = factorial(n_elementen);
        teller = noemer - 1;
    else
        teller = 0;
        noemer = factorial(n_elementen)
        
        for i = min_cycles:n_elementen
            teller = teller + noemer/i;
        end
        
        div = gcd([teller, noemer]);
        noemer = double(noemer/div);
        teller = double(teller/div);
    end
endfunction
