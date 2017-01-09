funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('candy', 0, 'kids', 1), 'output', struct('extra', 0))
test_cases($+1) = struct('input', struct('candy', 1, 'kids', 1), 'output', struct('extra', 0))
test_cases($+1) = struct('input', struct('candy', 5, 'kids', 5), 'output', struct('extra', 0))
test_cases($+1) = struct('input', struct('candy', 5, 'kids', 3), 'output', struct('extra', 1))
test_cases($+1) = struct('input', struct('candy', 0, 'kids', 10), 'output', struct('extra', 0))
test_cases($+1) = struct('input', struct('candy', 3, 'kids', 5), 'output', struct('extra', 2))
test_cases($+1) = struct('input', struct('candy', 9, 'kids', 10), 'output', struct('extra', 1))
test_cases($+1) = struct('input', struct('candy', 27, 'kids', 9), 'output', struct('extra', 0))
test_cases($+1) = struct('input', struct('candy', 26, 'kids', 9), 'output', struct('extra', 1))
test_cases($+1) = struct('input', struct('candy', 28, 'kids', 9), 'output', struct('extra', 8))

function Result = test_case(index)
    Result = test_cases(index)
endfunction

function Result = test_case_count()
    Result = size(test_cases)
endfunction

function show(index)
    tc = test_case(index)

    disp('Inputs')
    disp('candy')
    disp(tc.input.candy)
    disp('kids')
    disp(tc.input.kids)

    disp('Outputs')
    disp('extra')
    disp(tc.output.extra)
endfunction

function Result = check(index)
    tc = test_case(index)

    [extra] = solve(tc.input.candy, tc.input.kids)

    Result = %t
    Result = Result & isequal(extra, tc.output.extra)
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
