funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('ns', [0]), 'output', struct('max', 0))
test_cases($+1) = struct('input', struct('ns', [1]), 'output', struct('max', 1))
test_cases($+1) = struct('input', struct('ns', [0,1]), 'output', struct('max', 1))
test_cases($+1) = struct('input', struct('ns', [0,1,2]), 'output', struct('max', 2))
test_cases($+1) = struct('input', struct('ns', [1,1,1]), 'output', struct('max', 1))
test_cases($+1) = struct('input', struct('ns', [1,2,3,4]), 'output', struct('max', 4))
test_cases($+1) = struct('input', struct('ns', [10,10,10]), 'output', struct('max', 10))

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

    disp('Outputs')
    disp('max')
    disp(tc.output.max)
endfunction

function Result = check(index)
    tc = test_case(index)

    [max] = solve(tc.input.ns)

    Result = %t
    Result = Result & isequal(max, tc.output.max)
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
