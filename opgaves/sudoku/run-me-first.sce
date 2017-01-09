funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('input', [0,0,3,0,2,0,6,0,0;9,0,0,3,0,5,0,0,1;0,0,1,8,0,6,4,0,0;0,0,8,1,0,2,9,0,0;7,0,0,0,0,0,0,0,8;0,0,6,7,0,8,2,0,0;0,0,2,6,0,9,5,0,0;8,0,0,2,0,3,0,0,9;0,0,5,0,1,0,3,0,0]), 'output', struct('output', [4,8,3,9,2,1,6,5,7;9,6,7,3,4,5,8,2,1;2,5,1,8,7,6,4,9,3;5,4,8,1,3,2,9,7,6;7,2,9,5,6,4,1,3,8;1,3,6,7,9,8,2,4,5;3,7,2,6,8,9,5,1,4;8,1,4,2,5,3,7,6,9;6,9,5,4,1,7,3,8,2]))

function Result = test_case(index)
    Result = test_cases(index)
endfunction

function Result = test_case_count()
    Result = size(test_cases)
endfunction

function show(index)
    tc = test_case(index)

    disp('Inputs')
    disp('input')
    disp(tc.input.input)

    disp('Outputs')
    disp('output')
    disp(tc.output.output)
endfunction

function Result = check(index)
    tc = test_case(index)

    [output] = solve(tc.input.input)

    Result = %t
    Result = Result & isequal(output, tc.output.output)
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
