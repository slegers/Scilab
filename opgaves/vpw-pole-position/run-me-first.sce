funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('ns', [1,2,3,4], 'ds', [0,0,0,0]), 'output', struct('rs', [1,2,3,4]))
test_cases($+1) = struct('input', struct('ns', [1,2,3,4], 'ds', [1,-1,0,0]), 'output', struct('rs', [2,1,3,4]))
test_cases($+1) = struct('input', struct('ns', [1,2,3,4], 'ds', [0,1,-1,0]), 'output', struct('rs', [1,3,2,4]))
test_cases($+1) = struct('input', struct('ns', [1,2,3,4], 'ds', [0,0,1,-1]), 'output', struct('rs', [1,2,4,3]))
test_cases($+1) = struct('input', struct('ns', [1,2,3,4], 'ds', [2,0,-2,0]), 'output', struct('rs', [3,2,1,4]))
test_cases($+1) = struct('input', struct('ns', [1,2,3,4], 'ds', [0,2,0,-2]), 'output', struct('rs', [1,4,3,2]))
test_cases($+1) = struct('input', struct('ns', [1,2,3,4], 'ds', [3,0,0,-3]), 'output', struct('rs', [4,2,3,1]))
test_cases($+1) = struct('input', struct('ns', [1,2,3,4], 'ds', [3,1,-1,-3]), 'output', struct('rs', [4,3,2,1]))
test_cases($+1) = struct('input', struct('ns', [4,3,2,1], 'ds', [0,0,0,0]), 'output', struct('rs', [4,3,2,1]))
test_cases($+1) = struct('input', struct('ns', [4,3,2,1], 'ds', [1,-1,0,0]), 'output', struct('rs', [3,4,2,1]))
test_cases($+1) = struct('input', struct('ns', [4,3,2,1], 'ds', [0,1,-1,0]), 'output', struct('rs', [4,2,3,1]))
test_cases($+1) = struct('input', struct('ns', [4,3,2,1], 'ds', [0,0,1,-1]), 'output', struct('rs', [4,3,1,2]))
test_cases($+1) = struct('input', struct('ns', [4,3,2,1], 'ds', [2,0,-2,0]), 'output', struct('rs', [2,3,4,1]))
test_cases($+1) = struct('input', struct('ns', [4,3,2,1], 'ds', [0,2,0,-2]), 'output', struct('rs', [4,1,2,3]))
test_cases($+1) = struct('input', struct('ns', [4,3,2,1], 'ds', [3,0,0,-3]), 'output', struct('rs', [1,3,2,4]))
test_cases($+1) = struct('input', struct('ns', [4,3,2,1], 'ds', [3,1,-1,-3]), 'output', struct('rs', [1,2,3,4]))
test_cases($+1) = struct('input', struct('ns', [1,3,2,4], 'ds', [0,0,0,0]), 'output', struct('rs', [1,3,2,4]))
test_cases($+1) = struct('input', struct('ns', [1,3,2,4], 'ds', [1,-1,0,0]), 'output', struct('rs', [3,1,2,4]))
test_cases($+1) = struct('input', struct('ns', [1,3,2,4], 'ds', [0,1,-1,0]), 'output', struct('rs', [1,2,3,4]))
test_cases($+1) = struct('input', struct('ns', [1,3,2,4], 'ds', [0,0,1,-1]), 'output', struct('rs', [1,3,4,2]))
test_cases($+1) = struct('input', struct('ns', [1,3,2,4], 'ds', [2,0,-2,0]), 'output', struct('rs', [2,3,1,4]))
test_cases($+1) = struct('input', struct('ns', [1,3,2,4], 'ds', [0,2,0,-2]), 'output', struct('rs', [1,4,2,3]))
test_cases($+1) = struct('input', struct('ns', [1,3,2,4], 'ds', [3,0,0,-3]), 'output', struct('rs', [4,3,2,1]))
test_cases($+1) = struct('input', struct('ns', [1,3,2,4], 'ds', [3,1,-1,-3]), 'output', struct('rs', [4,2,3,1]))
test_cases($+1) = struct('input', struct('ns', [1,2,3,4,5,6,7,8,9], 'ds', [2,2,-2,-2,3,3,0,-3,-3]), 'output', struct('rs', [3,4,1,2,8,9,7,5,6]))
test_cases($+1) = struct('input', struct('ns', [9,8,7,6,5,4,3,2,1], 'ds', [2,2,-2,-2,3,3,0,-3,-3]), 'output', struct('rs', [7,6,9,8,2,1,3,5,4]))
test_cases($+1) = struct('input', struct('ns', [1,3,2,9,4,5,7,6,8], 'ds', [2,2,-2,-2,3,3,0,-3,-3]), 'output', struct('rs', [2,9,1,3,6,8,7,4,5]))

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
    disp('ds')
    disp(tc.input.ds)

    disp('Outputs')
    disp('rs')
    disp(tc.output.rs)
endfunction

function Result = check(index)
    tc = test_case(index)

    [rs] = solve(tc.input.ns, tc.input.ds)

    Result = %t
    Result = Result & isequal(rs, tc.output.rs)
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
