function [longest] = solve(ns)
    temp = 0;
    longest = 0;
    if size(ns, 'r') == 0 then
        longest = 0;
        return;
    end
    lst = list();
    lst2 = list();
    for i = 1:size(ns, 'r')
        lst($+1) = i;
    end
    for i = 1:size(ns, 'r')
        lst2 = lst;
        lst2(i) = null();
        temp = recursive(ns, i, lst2);
        if temp > longest then
            longest = temp;
        end
    end
endfunction

function [longest] = recursive(ns, current, tohandle)
    if length(tohandle) == 0 then
        longest = 1;
    else
        longest = 0;
        temp = 0;
        lst = list();
        for i = 1:length(tohandle)
            if (ns(tohandle(i),1) <> ns(current,2)) then
                continue;
            end
            lst = tohandle;
            lst(i) = null();
            temp = recursive(ns, tohandle(i), lst);
            if temp > longest then
                longest = temp;
            end
        end
        longest = longest + 1;
    end
endfunction
