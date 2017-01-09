function [valid] = solve(ns)
    if size(ns, 'r') <> size(ns, 'c') then
        valid = %f;
        return;
    end
    
    for i = 1:length(ns)
        if (ns(i) <> 0 & ns(i) <> 1) then
            valid = %f;
            return;
        end
    end
    
    for i = 1:size(ns, 'r')
        if sum(ns(i,:)) <> size(ns, 'r')/2 then
            valid = %f;
            return;
        elseif sum(ns(:,i)) <> size(ns, 'r')/2 then
            valid = %f;
            return;
        end
    end
    
    if size(ns, 'r') >= 3 then
        for i = 1:(size(ns, 'r') - 2)
            for j = 1:(size(ns, 'r'))
                if ns(i,j) == ns(i + 1,j) then
                    if ns(i,j) == ns(i + 2,j) then
                        valid = %f;
                        return;
                    end
                end
                if ns(j,i) == ns(j,i + 1) then
                    if ns(j,i) == ns(j, i + 2) then
                        valid = %f;
                        return;
                    end
                end
            end
        end
    end
    
    for i = 1:size(ns, 'r')
        for j = 1:size(ns, 'r')
            if i <> j then
                if ns(i,:) == ns(j,:) then
                    valid = %f;
                    return;
                elseif ns(:,i) == ns(:,j) then
                    valid = %f;
                    return;
                end
            end
        end
    end
    
    valid = %t;
    
endfunction
