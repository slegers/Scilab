function [mogelijk] = solve(munten,doel)
    mogelijk = %f;
    
    if length(munten) == 0 then
        if doel <> 0 then
            mogelijk = %f;
            return;
        else
            mogelijk = %t;
            return;
        end
    end
    
    munten = gsort(munten);
    lst = list();
    
    for i = 1:length(munten)
        lst($ + 1) = munten(i);
    end
    
    for i = 1:length(munten)
        if munten(i) > doel then
            continue;
        end
        temp = lst;
        temp(i) = null();
        mogelijk = recursive(temp, doel - munten(i));
        if mogelijk == %t then
            return;
        end
    end
endfunction

function [mogelijk] = recursive(munten, doel)
    mogelijk = %f;
    if doel == 0 then
        mogelijk = %t;
        return;
    end
    if length(munten) == 0 then
        mogelijk = %f;
        return;
    end
    for i = 1:length(munten)
            if munten(i) > doel then
                continue;
            end
            lst = munten;
            lst(i) = null();
            mogelijk = recursive(lst, doel - munten(i));
            if mogelijk == %t then
                return;
            end
    end
endfunction
