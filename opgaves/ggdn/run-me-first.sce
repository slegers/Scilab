funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('ns', [20]), 'output', struct('n', 20))
test_cases($+1) = struct('input', struct('ns', [20,30]), 'output', struct('n', 10))
test_cases($+1) = struct('input', struct('ns', [20,30,101]), 'output', struct('n', 1))
test_cases($+1) = struct('input', struct('ns', [30,20]), 'output', struct('n', 10))
test_cases($+1) = struct('input', struct('ns', [13,29,97]), 'output', struct('n', 1))
test_cases($+1) = struct('input', struct('ns', [13,65,91]), 'output', struct('n', 13))
test_cases($+1) = struct('input', struct('ns', [10,100,1000,10000]), 'output', struct('n', 10))
test_cases($+1) = struct('input', struct('ns', [1919,1919,1919,1919]), 'output', struct('n', 1919))

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
    disp('n')
    disp(tc.output.n)
endfunction

function Result = check(index)
    tc = test_case(index)

    [n] = solve(tc.input.ns)

    Result = %t
    Result = Result & isequal(n, tc.output.n)
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
