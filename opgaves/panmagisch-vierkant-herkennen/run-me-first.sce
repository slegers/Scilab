funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('ns', [2,7,6;9,5,1;4,3,8]), 'output', struct('r', %f))
test_cases($+1) = struct('input', struct('ns', [7,2,6;5,9,1;3,4,8]), 'output', struct('r', %f))
test_cases($+1) = struct('input', struct('ns', [1,1,1;1,1,1;1,1,1]), 'output', struct('r', %f))

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
    disp('r')
    disp(tc.output.r)
endfunction

function Result = check(index)
    tc = test_case(index)

    [r] = solve(tc.input.ns)

    Result = %t
    Result = Result & isequal(r, tc.output.r)
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
