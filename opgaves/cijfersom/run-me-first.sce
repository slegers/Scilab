funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('n', 0), 'output', struct('sum', 0))
test_cases($+1) = struct('input', struct('n', 1), 'output', struct('sum', 1))
test_cases($+1) = struct('input', struct('n', 10), 'output', struct('sum', 1))
test_cases($+1) = struct('input', struct('n', 11), 'output', struct('sum', 2))
test_cases($+1) = struct('input', struct('n', 14), 'output', struct('sum', 5))
test_cases($+1) = struct('input', struct('n', 123), 'output', struct('sum', 6))
test_cases($+1) = struct('input', struct('n', 4958), 'output', struct('sum', 26))
test_cases($+1) = struct('input', struct('n', 100001), 'output', struct('sum', 2))

function Result = test_case(index)
    Result = test_cases(index)
endfunction

function Result = test_case_count()
    Result = size(test_cases)
endfunction

function show(index)
    tc = test_case(index)

    disp('Inputs')
    disp('n')
    disp(tc.input.n)

    disp('Outputs')
    disp('sum')
    disp(tc.output.sum)
endfunction

function Result = check(index)
    tc = test_case(index)

    [sum] = solve(tc.input.n)

    Result = %t
    Result = Result & isequal(sum, tc.output.sum)
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
