function [oplossing] = solve(matrix)
    // Vul het magisch vierkant aan.
    for row = 1:size(matrix,"r")
        for col = 1:size(matrix,"c")
                if matrix(row,col) == 0 then
                    nulRow = row
                    nulCol = col
                end
        end
    end
    disp(nulRow)
    disp(nulCol)
    total = 0
    if nulRow <> 1 then
        for col =  1: size(matrix,"c")
            total = total + matrix(1,col)
        end
    else
        for col =  1: size(matrix,"c")
            total = total + matrix(2,col)
        end
    end
    for col = 1:size(matrix,"c")
        if col <> nulCol then
            total = total - matrix(nulRow,col)
         end
    end
    matrix(nulRow,nulCol) = total
       // Dummy toekenningen aan outputvariabelen
    oplossing = matrix
endfunction
