funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('x', 0), 'output', struct('kleinste_afstand', 60322))

function Result = test_case(index)
    Result = test_cases(index)
endfunction

function Result = test_case_count()
    Result = size(test_cases)
endfunction

function show(index)
    tc = test_case(index)

    disp('Inputs')
    disp('x')
    disp(tc.input.x)

    disp('Outputs')
    disp('kleinste_afstand')
    disp(tc.output.kleinste_afstand)
endfunction

function Result = check(index)
    tc = test_case(index)

    [kleinste_afstand] = solve(tc.input.x)

    Result = %t
    Result = Result & isequal(kleinste_afstand, tc.output.kleinste_afstand)
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
