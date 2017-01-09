funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('matrix', [1,12,13,8;2,14,7,11;15,0,10,6;16,5,4,9]), 'output', struct('oplossing', [1,12,13,8;2,14,7,11;15,3,10,6;16,5,4,9]))
test_cases($+1) = struct('input', struct('matrix', [4,5,16,9;14,11,2,0;1,8,13,12;15,10,3,6]), 'output', struct('oplossing', [4,5,16,9;14,11,2,7;1,8,13,12;15,10,3,6]))

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
