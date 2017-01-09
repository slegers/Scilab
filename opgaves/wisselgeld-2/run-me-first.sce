funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('munten', [], 'doel', 0), 'output', struct('mogelijk', %t))
test_cases($+1) = struct('input', struct('munten', [], 'doel', 1), 'output', struct('mogelijk', %f))
test_cases($+1) = struct('input', struct('munten', [1], 'doel', 1), 'output', struct('mogelijk', %t))
test_cases($+1) = struct('input', struct('munten', [1], 'doel', 2), 'output', struct('mogelijk', %f))
test_cases($+1) = struct('input', struct('munten', [1, 1], 'doel', 2), 'output', struct('mogelijk', %t))
test_cases($+1) = struct('input', struct('munten', [3], 'doel', 2), 'output', struct('mogelijk', %f))
test_cases($+1) = struct('input', struct('munten', [1, 2, 5, 10, 10], 'doel', 1), 'output', struct('mogelijk', %t))
test_cases($+1) = struct('input', struct('munten', [1, 2, 5, 10, 10], 'doel', 2), 'output', struct('mogelijk', %t))
test_cases($+1) = struct('input', struct('munten', [1, 2, 5, 10, 10], 'doel', 3), 'output', struct('mogelijk', %t))
test_cases($+1) = struct('input', struct('munten', [1, 2, 5, 10, 10], 'doel', 4), 'output', struct('mogelijk', %f))
test_cases($+1) = struct('input', struct('munten', [1, 2, 5, 10, 10], 'doel', 5), 'output', struct('mogelijk', %t))
test_cases($+1) = struct('input', struct('munten', [1, 2, 5, 10, 10], 'doel', 6), 'output', struct('mogelijk', %t))
test_cases($+1) = struct('input', struct('munten', [1, 2, 5, 10, 10], 'doel', 7), 'output', struct('mogelijk', %t))
test_cases($+1) = struct('input', struct('munten', [1, 2, 5, 10, 10], 'doel', 8), 'output', struct('mogelijk', %t))
test_cases($+1) = struct('input', struct('munten', [1, 2, 5, 10, 10], 'doel', 9), 'output', struct('mogelijk', %f))
test_cases($+1) = struct('input', struct('munten', [1, 2, 5, 10, 10], 'doel', 10), 'output', struct('mogelijk', %t))
test_cases($+1) = struct('input', struct('munten', [1, 2, 5, 10, 10], 'doel', 11), 'output', struct('mogelijk', %t))
test_cases($+1) = struct('input', struct('munten', [1, 2, 5, 10, 10], 'doel', 12), 'output', struct('mogelijk', %t))
test_cases($+1) = struct('input', struct('munten', [1, 2, 5, 10, 10], 'doel', 13), 'output', struct('mogelijk', %t))
test_cases($+1) = struct('input', struct('munten', [1, 2, 5, 10, 10], 'doel', 14), 'output', struct('mogelijk', %f))
test_cases($+1) = struct('input', struct('munten', [1, 2, 5, 10, 10], 'doel', 15), 'output', struct('mogelijk', %t))
test_cases($+1) = struct('input', struct('munten', [1, 2, 5, 10, 10], 'doel', 16), 'output', struct('mogelijk', %t))
test_cases($+1) = struct('input', struct('munten', [1, 2, 5, 10, 10], 'doel', 17), 'output', struct('mogelijk', %t))
test_cases($+1) = struct('input', struct('munten', [1, 2, 5, 10, 10], 'doel', 18), 'output', struct('mogelijk', %t))
test_cases($+1) = struct('input', struct('munten', [1, 2, 5, 10, 10], 'doel', 19), 'output', struct('mogelijk', %f))
test_cases($+1) = struct('input', struct('munten', [1, 2, 5, 10, 10], 'doel', 20), 'output', struct('mogelijk', %t))
test_cases($+1) = struct('input', struct('munten', [9, 5, 3, 2], 'doel', 10), 'output', struct('mogelijk', %t))
test_cases($+1) = struct('input', struct('munten', [1, 2, 4, 8, 16, 32, 64, 128], 'doel', 77), 'output', struct('mogelijk', %t))
test_cases($+1) = struct('input', struct('munten', [128, 64, 32, 16, 8, 4, 2, 1], 'doel', 77), 'output', struct('mogelijk', %t))

function Result = test_case(index)
    Result = test_cases(index)
endfunction

function Result = test_case_count()
    Result = size(test_cases)
endfunction

function show(index)
    tc = test_case(index)

    disp('Inputs')
    disp('munten')
    disp(tc.input.munten)
    disp('doel')
    disp(tc.input.doel)

    disp('Outputs')
    disp('mogelijk')
    disp(tc.output.mogelijk)
endfunction

function Result = check(index)
    tc = test_case(index)

    [mogelijk] = solve(tc.input.munten, tc.input.doel)

    Result = %t
    Result = Result & isequal(mogelijk, tc.output.mogelijk)
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
