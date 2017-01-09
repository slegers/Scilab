function [oplossing] = solve(matrix)
    // Het gegeven magisch vierkant ontbreekt 2 getallen.
    // Maak het weer compleet.
    [nulRow1,nulCol1] = searchNullBegin(matrix)
    [nulRow2,nulCol2] = SearchOtherNUll(matrix)
    total = 34
    if nulRow1 <> nulRow2 then
        for i = 1:size(matrix,"r")
            total = total - matrix(nulRow1,i)
         end
    else
        for i = 1:size(matrix,"c")
            total = total - matrix(i,nulCol1)
         end
    end
    matrix(nulRow1,nulCol1) = total
    total = 34
    if nulCol1 <> nulCol2 then
         for i = 1:size(matrix,"c")
            total = total - matrix(i,nulCol2)
        end
    else
        for i = 1:size(matrix,"r")
            total = total - matrix(nulRow2,i)
        end
    end
    matrix(nulRow2,nulCol2) = total
    disp(matrix)
    oplossing = matrix
endfunction

function [x,y]=searchNullBegin(matrix)
    for row = 1:size(matrix,"r")
        for col = 1:size(matrix,"c")
                if matrix(row,col) == 0 then
                    nulRow1 = row
                    nulCol1 = col
                end
        end
    end
    x = nulRow1
    y = nulCol1
endfunction

function [column,y]=SearchOtherNUll(matrix)
    for row = 1:size(matrix,"r")
        for col = 1:size(matrix,"c")
                if matrix(row,col) == 0 then
                    nulRow1 = row
                    nulCol1 = col
                    column = nulRow1
                    y = nulCol1
                    return column ,y
                end
        end
    end
    column = nulRow1
    y = nulCol1
endfunction

