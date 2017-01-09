funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('ns', [1]), 'output', struct('n', 1))
test_cases($+1) = struct('input', struct('ns', [2,1]), 'output', struct('n', 1))
test_cases($+1) = struct('input', struct('ns', [1,2]), 'output', struct('n', 2))
test_cases($+1) = struct('input', struct('ns', [1,2,3]), 'output', struct('n', 3))
test_cases($+1) = struct('input', struct('ns', [3,2,1]), 'output', struct('n', 1))
test_cases($+1) = struct('input', struct('ns', [1,3,2]), 'output', struct('n', 2))
test_cases($+1) = struct('input', struct('ns', [4]), 'output', struct('n', 1))
test_cases($+1) = struct('input', struct('ns', [4,10]), 'output', struct('n', 2))
test_cases($+1) = struct('input', struct('ns', [10,4]), 'output', struct('n', 1))
test_cases($+1) = struct('input', struct('ns', [1,2,3,4,5,6,7,8,9,10]), 'output', struct('n', 10))
test_cases($+1) = struct('input', struct('ns', [10,9,8,7,6,5,4,3,2,1]), 'output', struct('n', 1))
test_cases($+1) = struct('input', struct('ns', [1,3,5,7,9,2,4,6,8,10]), 'output', struct('n', 9))
test_cases($+1) = struct('input', struct('ns', [1,9,2,8,3,7,4,6,5,10]), 'output', struct('n', 6))
test_cases($+1) = struct('input', struct('ns', [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100]), 'output', struct('n', 100))

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
