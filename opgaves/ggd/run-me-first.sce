funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('a', 2, 'b', 1), 'output', struct('ggd', 1))
test_cases($+1) = struct('input', struct('a', 2, 'b', 8), 'output', struct('ggd', 2))
test_cases($+1) = struct('input', struct('a', 2, 'b', 12), 'output', struct('ggd', 2))
test_cases($+1) = struct('input', struct('a', 2, 'b', 20), 'output', struct('ggd', 2))
test_cases($+1) = struct('input', struct('a', 2, 'b', 29), 'output', struct('ggd', 1))
test_cases($+1) = struct('input', struct('a', 2, 'b', 250), 'output', struct('ggd', 2))
test_cases($+1) = struct('input', struct('a', 4, 'b', 1), 'output', struct('ggd', 1))
test_cases($+1) = struct('input', struct('a', 4, 'b', 8), 'output', struct('ggd', 4))
test_cases($+1) = struct('input', struct('a', 4, 'b', 12), 'output', struct('ggd', 4))
test_cases($+1) = struct('input', struct('a', 4, 'b', 20), 'output', struct('ggd', 4))
test_cases($+1) = struct('input', struct('a', 4, 'b', 29), 'output', struct('ggd', 1))
test_cases($+1) = struct('input', struct('a', 4, 'b', 250), 'output', struct('ggd', 2))
test_cases($+1) = struct('input', struct('a', 5, 'b', 1), 'output', struct('ggd', 1))
test_cases($+1) = struct('input', struct('a', 5, 'b', 8), 'output', struct('ggd', 1))
test_cases($+1) = struct('input', struct('a', 5, 'b', 12), 'output', struct('ggd', 1))
test_cases($+1) = struct('input', struct('a', 5, 'b', 20), 'output', struct('ggd', 5))
test_cases($+1) = struct('input', struct('a', 5, 'b', 29), 'output', struct('ggd', 1))
test_cases($+1) = struct('input', struct('a', 5, 'b', 250), 'output', struct('ggd', 5))
test_cases($+1) = struct('input', struct('a', 10, 'b', 1), 'output', struct('ggd', 1))
test_cases($+1) = struct('input', struct('a', 10, 'b', 8), 'output', struct('ggd', 2))
test_cases($+1) = struct('input', struct('a', 10, 'b', 12), 'output', struct('ggd', 2))
test_cases($+1) = struct('input', struct('a', 10, 'b', 20), 'output', struct('ggd', 10))
test_cases($+1) = struct('input', struct('a', 10, 'b', 29), 'output', struct('ggd', 1))
test_cases($+1) = struct('input', struct('a', 10, 'b', 250), 'output', struct('ggd', 10))
test_cases($+1) = struct('input', struct('a', 20, 'b', 1), 'output', struct('ggd', 1))
test_cases($+1) = struct('input', struct('a', 20, 'b', 8), 'output', struct('ggd', 4))
test_cases($+1) = struct('input', struct('a', 20, 'b', 12), 'output', struct('ggd', 4))
test_cases($+1) = struct('input', struct('a', 20, 'b', 20), 'output', struct('ggd', 20))
test_cases($+1) = struct('input', struct('a', 20, 'b', 29), 'output', struct('ggd', 1))
test_cases($+1) = struct('input', struct('a', 20, 'b', 250), 'output', struct('ggd', 10))
test_cases($+1) = struct('input', struct('a', 31, 'b', 1), 'output', struct('ggd', 1))
test_cases($+1) = struct('input', struct('a', 31, 'b', 8), 'output', struct('ggd', 1))
test_cases($+1) = struct('input', struct('a', 31, 'b', 12), 'output', struct('ggd', 1))
test_cases($+1) = struct('input', struct('a', 31, 'b', 20), 'output', struct('ggd', 1))
test_cases($+1) = struct('input', struct('a', 31, 'b', 29), 'output', struct('ggd', 1))
test_cases($+1) = struct('input', struct('a', 31, 'b', 250), 'output', struct('ggd', 1))
test_cases($+1) = struct('input', struct('a', 50, 'b', 1), 'output', struct('ggd', 1))
test_cases($+1) = struct('input', struct('a', 50, 'b', 8), 'output', struct('ggd', 2))
test_cases($+1) = struct('input', struct('a', 50, 'b', 12), 'output', struct('ggd', 2))
test_cases($+1) = struct('input', struct('a', 50, 'b', 20), 'output', struct('ggd', 10))
test_cases($+1) = struct('input', struct('a', 50, 'b', 29), 'output', struct('ggd', 1))
test_cases($+1) = struct('input', struct('a', 50, 'b', 250), 'output', struct('ggd', 50))
test_cases($+1) = struct('input', struct('a', 84, 'b', 1), 'output', struct('ggd', 1))
test_cases($+1) = struct('input', struct('a', 84, 'b', 8), 'output', struct('ggd', 4))
test_cases($+1) = struct('input', struct('a', 84, 'b', 12), 'output', struct('ggd', 12))
test_cases($+1) = struct('input', struct('a', 84, 'b', 20), 'output', struct('ggd', 4))
test_cases($+1) = struct('input', struct('a', 84, 'b', 29), 'output', struct('ggd', 1))
test_cases($+1) = struct('input', struct('a', 84, 'b', 250), 'output', struct('ggd', 2))

function Result = test_case(index)
    Result = test_cases(index)
endfunction

function Result = test_case_count()
    Result = size(test_cases)
endfunction

function show(index)
    tc = test_case(index)

    disp('Inputs')
    disp('a')
    disp(tc.input.a)
    disp('b')
    disp(tc.input.b)

    disp('Outputs')
    disp('ggd')
    disp(tc.output.ggd)
endfunction

function Result = check(index)
    tc = test_case(index)

    [ggd] = solve(tc.input.a, tc.input.b)

    Result = %t
    Result = Result & isequal(ggd, tc.output.ggd)
endfunction

function Result = failures()
    n = test_case_count()
    failures = []

    for index = 1:n
        if ~check(index) then
            failures = [ failures, index ]
        end
    end

    Result = failures
endfunction

function report()
    [temp, n] = size(failures())

    disp( strcat( [ "Number of test cases: ", string(test_case_count()) ] ) )
    disp( strcat( [ "Number of failures: ", string(n) ] ) )
    disp( strcat( [ "Number of successes: ", string(test_case_count() - n) ] ) )

    if n == 0 then
        disp("SUCCESS")
    else
        disp("FAIL")
    end
endfunction
