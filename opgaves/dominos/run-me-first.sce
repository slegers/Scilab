funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('ns', []), 'output', struct('longest', 0))
test_cases($+1) = struct('input', struct('ns', [0,1]), 'output', struct('longest', 1))
test_cases($+1) = struct('input', struct('ns', [0,1;1,2]), 'output', struct('longest', 2))
test_cases($+1) = struct('input', struct('ns', [0,1;2,1]), 'output', struct('longest', 1))
test_cases($+1) = struct('input', struct('ns', [0,1;1,2]), 'output', struct('longest', 2))
test_cases($+1) = struct('input', struct('ns', [0,1;1,2;2,3]), 'output', struct('longest', 3))
test_cases($+1) = struct('input', struct('ns', [0,1;1,2;2,3;2,4;4,5]), 'output', struct('longest', 4))
test_cases($+1) = struct('input', struct('ns', [0,1;1,2;2,3;2,4;4,5;5,2]), 'output', struct('longest', 6))
test_cases($+1) = struct('input', struct('ns', [6,4;4,7;7,5;5,7;7,6;6,3]), 'output', struct('longest', 6))
test_cases($+1) = struct('input', struct('ns', [5,4;4,7;7,1;1,8;8,3;5,2]), 'output', struct('longest', 5))

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
    disp('longest')
    disp(tc.output.longest)
endfunction

function Result = check(index)
    tc = test_case(index)

    [longest] = solve(tc.input.ns)

    Result = %t
    Result = Result & isequal(longest, tc.output.longest)
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
