function [solution] = solve(x)
    // Decodeer onderstaande morse code waaruit
    // de pauzes tussen letters werden weggelaten.
    // 
    // -.........-..--..--..-....---..----......-..-.--.-........---.-....--..----..-.--.--.--
    // 
    // In ruil krijg je wel te weten welke letters gebruikt werden:
    // 
    // "aaeegghhhiiiiiilmnnooossttttttuuvwwy"
    // 
    // Schrijf het antwoord neer in lower case, met spaties.
    // 
    // function solution = solve(x)
    //   if x == 0 then
    //     solution = "dummy"
    //   else
    //     solution = "oplossing"
    //   end
    // endfunction

    // Dummy toekenningen aan outputvariabelen
    if x == 0 then
        solution = "dummy"
    else
        solution = "this time without giving the solution away"
    end
endfunction

