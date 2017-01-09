funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('n', 1, 'k', 1), 'output', struct('digit', 1))
test_cases($+1) = struct('input', struct('n', 2, 'k', 1), 'output', struct('digit', 2))
test_cases($+1) = struct('input', struct('n', 15, 'k', 7), 'output', struct('digit', 4))
test_cases($+1) = struct('input', struct('n', 17, 'k', 11), 'output', struct('digit', 9))
test_cases($+1) = struct('input', struct('n', 50, 'k', 26), 'output', struct('digit', 8))

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
    disp('k')
    disp(tc.input.k)

    disp('Outputs')
    disp('digit')
    disp(tc.output.digit)
endfunction

function Result = check(index)
    tc = test_case(index)

    [digit] = solve(tc.input.n, tc.input.k)

    Result = %t
    Result = Result & isequal(digit, tc.output.digit)
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
