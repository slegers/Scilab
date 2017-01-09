function [oplossing] = solve(matrix)
    // Vul het gegeven magisch vierkant aan
    rowCount = size(matrix,"r")
    colCount = size(matrix,"c")
    matrix(2,2) = 5
    
    bFilled = 0
    while bFilled == 0 
        
        //check diagonaal   
        if (matrix(1,1) <> 0) then
            matrix(3,3) = 15 - 5 - matrix(1,1)
        end
        
        if (matrix(1,3) <> 0) then
           matrix(3,1) = 15 - 5 - matrix(1,3)        
        end
        
        if (matrix(3,3) <> 0) then
           matrix(1,1) = 15 - 5 - matrix(3,3)         
        end
        
        if (matrix(3,1) <> 0) then
           matrix(1,3) = 15 - 5 - matrix(3,1)         
        end
        
        if (matrix(1,2) <> 0) then
            matrix(3,2) = 15 - 5 - matrix(1,2)
        end
        
       if (matrix(3,2) <> 0) then
            matrix(1,2) = 15 - 5 - matrix(3,2)
        end
        
        if (matrix(2,1) <> 0) then
            matrix(2,3) = 15 - 5 - matrix(2,1)
        end
        
        if (matrix(2,3) <> 0) then
            matrix(2,1) = 15 - 5 - matrix(2,3)
        end
        
        //check row and colloums
        //rows
        for (i = 1:3)
            rowCount = 0
            for(j = 1:3)
                if (matrix(i,j) <> 0) then
                    rowCount = rowCount + 1
                end
             end
             if (rowCount == 2) then
                 for (j = 1:3)
                     if (matrix(i,j) == 0) then
                         matrix(i,j) = 15 - sum(matrix(i,:))
                      end
                 end
             end
         end
        
        //collums
        for (j = 1:3)
            colCount = 0
            for(i = 1:3)
                if (matrix(i,j) <> 0) then
                    colCount = colCount + 1
                end
             end
             if (colCount == 2) then
                 for (i = 1:3)
                     if (matrix(i,j) == 0) then
                         matrix(i,j) = 15 - sum(matrix(:,j))
                      end
                 end
             end
         end
        
        disp(matrix)
        bFilled = 1
        for (i = 1:3)
            for (j = 1:3)
               if (matrix(i,j) == 0) then
                  bFilled = 0
                  disp ("not filled")
                end
            end
        end
    end
    
    oplossing = matrix
endfunction
