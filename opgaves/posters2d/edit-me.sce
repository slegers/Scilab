function [n] = solve(ns)
    // Dit is een moeilijkere 2D-versie van vpw-posters1d.
    // 
    // Je begint met een lege muur met onbeperkte afmetingen.
    // Op deze muur plak je een aantal posters. Deze posters kunnen overlappen.
    // De vraag is om uit te rekenen hoeveel posters nog zichtbaar zijn
    // nadat je alle posters aan de muur hebt geplakt.
    // 
    // De gegeven matrix ns moet je rij per rij bekijken: elke rij
    // bevat 4 gehele getallen: x, y, dx en dy. x en y stellen de coordinaten
    // voor van de linkeronderhoek van de poster. dx en dy komen overeen
    // met de breedte en hoogte van de poster, respectievelijk.

    // Dummy toekenningen aan outputvariabelen
    x = size(ns, "r")
    
    y = max(ns)
    
    r = zeros(2 * y + 0,2 * y + 0)
    a = 0
    b = 0
    c = 0
    d = 0
    if x == 0 then
        n = 0
    else
        for i = 1:x
            a = ns(i,1) + 1
            b = ns(i,2) + 1
            c = ns(i,3)
            d = ns(i,4)
            
            r(a,b) = i
            
            if c <> 1 then
                for u = 0:c-1
                    r(a+u,b) = i
                    if d <> 1 then
                        for o = 0:d-1
                            r(a+u,b+o) = i
                        end
                    end
                end
             end
        end
        f = unique(r)
        n = length(f)-1
    end
endfunction
