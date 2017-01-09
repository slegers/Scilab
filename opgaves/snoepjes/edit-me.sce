function [extra] = solve(candy,kids)
    // Bereken hoeveel snoepjes er bijgekocht moeten worden opdat iedereen er evenveel kan krijgen.
    if kids > candy then
        if candy == 0 then
            extra = 0
        else
            extra = kids - candy
        end
    else
        kids1 = kids
        while kids1 < candy
            kids1 = kids1 + kids
        end
        extra = kids1 - candy
    end
    // Dummy toekenningen aan outputvariabelen
endfunction
