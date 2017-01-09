funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('k', 1, 'ns', [0,10]), 'output', struct('time', 10))
test_cases($+1) = struct('input', struct('k', 1, 'ns', [0,10;0,10]), 'output', struct('time', 20))
test_cases($+1) = struct('input', struct('k', 1, 'ns', [0,10;0,10;0,10]), 'output', struct('time', 30))
test_cases($+1) = struct('input', struct('k', 1, 'ns', [0,10;5,10]), 'output', struct('time', 20))
test_cases($+1) = struct('input', struct('k', 1, 'ns', [0,10;15,10]), 'output', struct('time', 25))
test_cases($+1) = struct('input', struct('k', 1, 'ns', [10,5]), 'output', struct('time', 15))
test_cases($+1) = struct('input', struct('k', 2, 'ns', [0,10;0,10]), 'output', struct('time', 10))
test_cases($+1) = struct('input', struct('k', 2, 'ns', [0,10;0,15]), 'output', struct('time', 15))
test_cases($+1) = struct('input', struct('k', 2, 'ns', [0,10;0,15;0,20]), 'output', struct('time', 30))
test_cases($+1) = struct('input', struct('k', 2, 'ns', [0,10;0,5;0,5]), 'output', struct('time', 10))
test_cases($+1) = struct('input', struct('k', 3, 'ns', [10,10;10,10;10,10]), 'output', struct('time', 20))
test_cases($+1) = struct('input', struct('k', 3, 'ns', [10,10;11,10;12,10]), 'output', struct('time', 22))
test_cases($+1) = struct('input', struct('k', 3, 'ns', [10,10;11,10;12,10;13,10]), 'output', struct('time', 30))

function Result = test_case(index)
    Result = test_cases(index)
endfunction

function Result = test_case_count()
    Result = size(test_cases)
endfunction

function show(index)
    tc = test_case(index)

    disp('Inputs')
    disp('k')
    disp(tc.input.k)
    disp('ns')
    disp(tc.input.ns)

    disp('Outputs')
    disp('time')
    disp(tc.output.time)
endfunction

function Result = check(index)
    tc = test_case(index)

    [time] = solve(tc.input.k, tc.input.ns)

    Result = %t
    Result = Result & isequal(time, tc.output.time)
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
