function [digit] = solve(n, k)
    array = zeros(1,500);
    array(500) = 1;
    
    array = fac(array, n);
    
    i = 0;
    for j = 1:length(array)
        if array(j) <> 0 then
            i = j;
            break;
        end
    end
    
    digit = array(i + k - 1);
endfunction

function [returnArray] = fac(array, n)
    returnArray = array;
    if n == 1 then
        return;
    end
    
    toAdd = 0;
    for i = length(array):-1:2
        array(i) = (array(i) * n) + toAdd;
        toAdd = floor(array(i)/10);
        array(i) = modulo(array(i),10);
    end
    
    returnArray = fac(array, n-1);
endfunction
