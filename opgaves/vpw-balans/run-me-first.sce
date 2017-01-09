funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('ns', [1,2,3,4], 'goal', 5), 'output', struct('sum', 2))
test_cases($+1) = struct('input', struct('ns', [1,1,2,3,4], 'goal', 5), 'output', struct('sum', 2))
test_cases($+1) = struct('input', struct('ns', [1,2,3,4,1], 'goal', 5), 'output', struct('sum', 2))
test_cases($+1) = struct('input', struct('ns', [0], 'goal', 0), 'output', struct('sum', 1))
test_cases($+1) = struct('input', struct('ns', [2], 'goal', 4), 'output', struct('sum', 1))
test_cases($+1) = struct('input', struct('ns', [1,3,7,9], 'goal', 5), 'output', struct('sum', 0))
test_cases($+1) = struct('input', struct('ns', [1,3,7,9], 'goal', 11), 'output', struct('sum', 0))

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
    disp('goal')
    disp(tc.input.goal)

    disp('Outputs')
    disp('sum')
    disp(tc.output.sum)
endfunction

function Result = check(index)
    tc = test_case(index)

    [sum] = solve(tc.input.ns, tc.input.goal)

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
