funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('matrix', [1,0,12,7;11,8,2,13;6,9,15,4;16,3,0,10]), 'output', struct('oplossing', [1,14,12,7;11,8,2,13;6,9,15,4;16,3,5,10]))
test_cases($+1) = struct('input', struct('matrix', [16,2,0,11;14,4,9,7;3,0,8,10;1,15,12,6]), 'output', struct('oplossing', [16,2,5,11;14,4,9,7;3,13,8,10;1,15,12,6]))

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
