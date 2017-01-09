funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('matrix', [6,0,0;0,0,0;0,3,0]), 'output', struct('oplossing', [6,7,2;1,5,9;8,3,4]))
test_cases($+1) = struct('input', struct('matrix', [0,0,4;1,0,0;0,0,0]), 'output', struct('oplossing', [8,3,4;1,5,9;6,7,2]))

function Result = test_case(index)
    Result = test_cases(index)
endfunction

function Result = test_case_count()
    Result = size(test_cases)
endfunction

function show(index)
    tc = test_case(index)

    disp('Inputs')
    disp('matrix')
    disp(tc.input.matrix)

    disp('Outputs')
    disp('oplossing')
    disp(tc.output.oplossing)
endfunction

function Result = check(index)
    tc = test_case(index)

    [oplossing] = solve(tc.input.matrix)

    Result = %t
    Result = Result & isequal(oplossing, tc.output.oplossing)
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
