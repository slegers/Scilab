function [time] = solve(k,ns)
    array = zeros(1,k);
    
    for i = 1:size(ns, 'r')
        arraymin = min(array);
        
        for m = 1:length(array)
            if arraymin == array(m) then
                if array(m) < ns(i,1) then
                    array(m) = ns(i,1) + ns(i,2);
                else
                    array(m) = array(m) + ns(i,2);
                end
                break;
            end
        end
    end
    time = max(array);
endfunction
