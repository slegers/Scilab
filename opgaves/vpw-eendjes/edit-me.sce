function [result] = solve(ns,k)
    if k >= length(ns) then
        result = sum(ns);
    else
        result = 0;
        for i = 1:(length(ns)-(k-1))
            temp = sum(ns(i:i+(k-1)));
            if result < temp then
                result = temp;
            end
        end
    end
endfunction
