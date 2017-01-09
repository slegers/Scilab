function [output] = solve(input)
    output = iterative(input);
endfunction

function [output] = iterative(sq)
    count = 0;
    output = sq;
    used = [%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f];
    nbSum = 34;
    
    for a = 1:16
        if used(a) == %t & ~(output(1) == a) then
            continue;
        end
        used(a) = %t;
        for b = 1:16
            if used(b) == %t & ~(output(5) == b) then
                continue;
            end
            used(b) = %t;
            for c = 1:16
                if used(c) == %t & ~(output(9) == c) then
                    continue;
                end
                d = nbSum - a - b - c;
                if d<1 | d>16 | (used(d) == %t & ~(output(13) == d)) | d == c then
                    continue;
                end
                used(c) = %t;
                used(d) = %t;
                for e = 1:16
                    if used(e) == %t & ~(output(2) == e) then
                        continue;
                    end
                    used(e) = %t;
                    for f = 1:16
                        if used(f) == %t & ~(output(6) == f) then
                            continue;
                        end
                        used(f) = %t;
                        for g = 1:16
                            if used(g) == %t & ~(output(10) == g) then
                                continue;
                            end
                            h = nbSum - e - f - g;
                            if h<1 | h>16 | (used(h) == %t & ~(output(14) == h)) | h == g then
                                continue;
                            end
                            used(g) = %t;
                            used(h) = %t;
                            for i = 1:16
                                if used(i) == %t & ~(output(3) == i) then
                                    continue;
                                end
                                m = nbSum - a - e - i;
                                if m<1 | m>16 | (used(m) == %t & ~(output(4) == m)) | m == i then
                                    continue;
                                end
                                j = nbSum - m - g - d;
                                if j<1 | j>16 | (used(j) == %t & ~(output(7) == j)) | j == i | j == m then
                                    continue;
                                end
                                n = nbSum - b - f - j;
                                if n<1 | n>16 | (used(n) == %t & ~(output(8) == n)) | n == i | n == m | n == j then
                                    continue;
                                end
                                used(i) = %t;
                                used(m) = %t;
                                used(j) = %t;
                                used(n) = %t;
                                for k = 1:16
                                    if used(k) == %t & ~(output(11) == k) then
                                        continue;
                                    end
                                    l = nbSum - i - j - k;
                                    if l<1 | l>16 | (used(l) == %t & ~(output(15) == l)) | l == k then
                                        continue;
                                    end
                                    o = nbSum - c - g - k;
                                    if o<1 | o>16 | (used(o) == %t & ~(output(12) == o)) | o == k | o == l then
                                        continue;
                                    end
                                    p = nbSum - a - f - k;
                                    if p<1 | p>16 | (used(p) == %t & ~(output(16) == p)) | p == k | p == l | p == o | d+h+l+p <> nbSum | m+n+o+p <> nbSum then
                                        continue;
                                    end
                                    
                                    sq(1) = a;
                                    sq(2) = e;
                                    sq(3) = i;
                                    sq(4) = m;
                                    sq(5) = b;
                                    sq(6) = f;
                                    sq(7) = j;
                                    sq(8) = n;
                                    sq(9) = c;
                                    sq(10) = g;
                                    sq(11) = k;
                                    sq(12) = o;
                                    sq(13) = d;
                                    sq(14) = h;
                                    sq(15) = l;
                                    sq(16) = p;
                                    
                                    count = count + 1;
                                    if count > 7035 then
                                        disp(count)
                                    end
                                    if checkSolution(sq, output) then
                                        output = sq;
                                        return;
                                    end
                                end
                                if ~(output(3) == i) then
                                    used(i) = %f;
                                end
                                if ~(output(4) == m) then
                                    used(m) = %f;
                                end
                                if ~(output(7) == j) then
                                    used(j) = %f;
                                end
                                if ~(output(8) == n) then
                                    used(n) = %f;
                                end
                            end
                            if ~(output(14) == h) then
                                used(h) = %f;
                            end
                            if ~(output(10) == g) then
                                used(g) = %f;
                            end
                        end
                        if ~(output(6) == f) then
                            used(f) = %f;
                        end
                    end
                    if ~(output(2) == e) then
                        used(e) = %f;
                    end
                end
                if ~(output(9) == c) then
                    used(c) = %f;
                end
                if ~(output(13) == d) then
                    used(d) = %f;
                end
            end
            if ~(output(5) == b) then
                used(b) = %f;
            end
        end
        if ~(output(1) == a) then
            used(a) = %f;
        end
    end
endfunction

function [good] = checkSolution(sol, given)
    good = %f;
    for i = 1:4
        for j = 1:4
            if (given(i,j) <> 0) & (given(i,j) <> sol(i,j)) then
                return;
            end
        end
    end
    good = %t;
endfunction

function [array] = boolArray(sq)
    array = [%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f];
    
    for i = 1:4
        for j = 1:4
            if (sq(i,j) <> 0) then
                array(i + (j-1)*4) = %t;
            end
        end
    end
endfunction
