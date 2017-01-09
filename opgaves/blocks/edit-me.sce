function [heights] = solve(blocks)
    if size(blocks, 'r') == 0 then
        heights = [0];
        return;
    end
    
    if blocks(1) == 1 & blocks(2) == 1 & blocks(3) ==1  then
        heights = [1];
        return;
    end
    
    tmpHeights = recursive(blocks);
    
    heights = zeros(1, length(tmpHeights));
    for i = 1:length(heights)
        heights(i) = tmpHeights(i);
    end
    
    heights = sum(heights);
endfunction

function [heights] = recursive(blocks)
    if size(blocks, 'r') == 1 then
        heights = list(0, blocks(1), blocks(2), blocks(3));
    else
        heights = list();
        tmpHeights = recursive(blocks(2:size(blocks, 'r'),:));
        for i = 1:length(tmpHeights)
            heights($ + 1) = tmpHeights(i)
            heights($ + 1) = tmpHeights(i) + blocks(1,1);
            heights($ + 1) = tmpHeights(i) + blocks(1,2);
            heights($ + 1) = tmpHeights(i) + blocks(1,3);
        end
        
        tmpHeights = zeros(1, length(heights));
        for i = 1:length(heights)
            tmpHeights(i) = heights(i);
        end
        
        tmpHeights = unique(tmpHeights);
        heights = list();
        for i = 1:length(tmpHeights)
            heights($ + 1) = tmpHeights(i);
        end
    end
endfunction
