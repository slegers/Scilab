funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('matrix', [0,0,0,14;0,0,0,0;0,1,0,0;7,0,0,2]), 'output', struct('oplossing', [11,4,5,14;6,13,12,3;10,1,8,15;7,16,9,2]))
test_cases($+1) = struct('input', struct('matrix', [1,0,0,0;0,5,0,0;0,0,0,0;0,6,0,0]), 'output', struct('oplossing', [1,11,14,8;16,5,4,9;7,12,13,2;10,6,3,15]))
test_cases($+1) = struct('input', struct('matrix', [3,0,0,13;0,7,0,0;0,0,0,0;0,5,0,0]), 'output', struct('oplossing', [3,12,6,13;14,7,9,4;15,10,8,1;2,5,11,16]))

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
