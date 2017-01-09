funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('ns', [1,2,3,4,5], 'k', 1), 'output', struct('result', 5))
test_cases($+1) = struct('input', struct('ns', [1,6,7,5,4,2,3,9,4,2,8,6,4,2,3], 'k', 1), 'output', struct('result', 9))
test_cases($+1) = struct('input', struct('ns', [1,2,3,4,5], 'k', 2), 'output', struct('result', 9))
test_cases($+1) = struct('input', struct('ns', [1,6,7,5,4,2,3,9,4,2,8,6,4,2,3], 'k', 2), 'output', struct('result', 14))
test_cases($+1) = struct('input', struct('ns', [1,2,3,4,5], 'k', 3), 'output', struct('result', 12))
test_cases($+1) = struct('input', struct('ns', [1,6,7,5,4,2,3,9,4,2,8,6,4,2,3], 'k', 3), 'output', struct('result', 18))
test_cases($+1) = struct('input', struct('ns', [1,2,3,4,5], 'k', 4), 'output', struct('result', 14))
test_cases($+1) = struct('input', struct('ns', [1,6,7,5,4,2,3,9,4,2,8,6,4,2,3], 'k', 4), 'output', struct('result', 23))
test_cases($+1) = struct('input', struct('ns', [1,2,3,4,5], 'k', 5), 'output', struct('result', 15))
test_cases($+1) = struct('input', struct('ns', [1,6,7,5,4,2,3,9,4,2,8,6,4,2,3], 'k', 5), 'output', struct('result', 29))

function Result = test_case(index)
    Result = test_cases(index)
endfunction

function Result = test_case_count()
    Result = size(test_cases)
endfunction

function show(index)
    tc = test_case(index)

    disp('Inputs')
    disp('ns')
    disp(tc.input.ns)
    disp('k')
    disp(tc.input.k)

    disp('Outputs')
    disp('result')
    disp(tc.output.result)
endfunction

function Result = check(index)
    tc = test_case(index)

    [result] = solve(tc.input.ns, tc.input.k)

    Result = %t
    Result = Result & isequal(result, tc.output.result)
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
