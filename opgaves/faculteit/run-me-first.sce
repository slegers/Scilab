funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('n', 1), 'output', struct('faculteit', 1))
test_cases($+1) = struct('input', struct('n', 2), 'output', struct('faculteit', 2))
test_cases($+1) = struct('input', struct('n', 3), 'output', struct('faculteit', 6))
test_cases($+1) = struct('input', struct('n', 4), 'output', struct('faculteit', 24))
test_cases($+1) = struct('input', struct('n', 5), 'output', struct('faculteit', 120))

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

    disp('Outputs')
    disp('faculteit')
    disp(tc.output.faculteit)
endfunction

function Result = check(index)
    tc = test_case(index)

    [faculteit] = solve(tc.input.n)

    Result = %t
    Result = Result & isequal(faculteit, tc.output.faculteit)
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
