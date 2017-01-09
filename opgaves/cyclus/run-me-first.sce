funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('n_elementen', 1, 'min_cycles', 0), 'output', struct('teller', 1, 'noemer', 1))
test_cases($+1) = struct('input', struct('n_elementen', 1, 'min_cycles', 1), 'output', struct('teller', 1, 'noemer', 1))
test_cases($+1) = struct('input', struct('n_elementen', 1, 'min_cycles', 2), 'output', struct('teller', 0, 'noemer', 1))
test_cases($+1) = struct('input', struct('n_elementen', 2, 'min_cycles', 0), 'output', struct('teller', 1, 'noemer', 1))
test_cases($+1) = struct('input', struct('n_elementen', 2, 'min_cycles', 1), 'output', struct('teller', 1, 'noemer', 1))
test_cases($+1) = struct('input', struct('n_elementen', 2, 'min_cycles', 2), 'output', struct('teller', 1, 'noemer', 2))
test_cases($+1) = struct('input', struct('n_elementen', 2, 'min_cycles', 3), 'output', struct('teller', 0, 'noemer', 1))
test_cases($+1) = struct('input', struct('n_elementen', 3, 'min_cycles', 0), 'output', struct('teller', 1, 'noemer', 1))
test_cases($+1) = struct('input', struct('n_elementen', 3, 'min_cycles', 1), 'output', struct('teller', 1, 'noemer', 1))
test_cases($+1) = struct('input', struct('n_elementen', 3, 'min_cycles', 2), 'output', struct('teller', 5, 'noemer', 6))
test_cases($+1) = struct('input', struct('n_elementen', 3, 'min_cycles', 3), 'output', struct('teller', 1, 'noemer', 3))
test_cases($+1) = struct('input', struct('n_elementen', 3, 'min_cycles', 4), 'output', struct('teller', 0, 'noemer', 1))
test_cases($+1) = struct('input', struct('n_elementen', 4, 'min_cycles', 0), 'output', struct('teller', 1, 'noemer', 1))
test_cases($+1) = struct('input', struct('n_elementen', 4, 'min_cycles', 1), 'output', struct('teller', 1, 'noemer', 1))
test_cases($+1) = struct('input', struct('n_elementen', 4, 'min_cycles', 2), 'output', struct('teller', 23, 'noemer', 24))
test_cases($+1) = struct('input', struct('n_elementen', 4, 'min_cycles', 3), 'output', struct('teller', 7, 'noemer', 12))
test_cases($+1) = struct('input', struct('n_elementen', 4, 'min_cycles', 4), 'output', struct('teller', 1, 'noemer', 4))
test_cases($+1) = struct('input', struct('n_elementen', 4, 'min_cycles', 5), 'output', struct('teller', 0, 'noemer', 1))
test_cases($+1) = struct('input', struct('n_elementen', 5, 'min_cycles', 0), 'output', struct('teller', 1, 'noemer', 1))
test_cases($+1) = struct('input', struct('n_elementen', 5, 'min_cycles', 1), 'output', struct('teller', 1, 'noemer', 1))
test_cases($+1) = struct('input', struct('n_elementen', 5, 'min_cycles', 2), 'output', struct('teller', 119, 'noemer', 120))
test_cases($+1) = struct('input', struct('n_elementen', 5, 'min_cycles', 3), 'output', struct('teller', 47, 'noemer', 60))
test_cases($+1) = struct('input', struct('n_elementen', 5, 'min_cycles', 4), 'output', struct('teller', 9, 'noemer', 20))
test_cases($+1) = struct('input', struct('n_elementen', 5, 'min_cycles', 5), 'output', struct('teller', 1, 'noemer', 5))
test_cases($+1) = struct('input', struct('n_elementen', 5, 'min_cycles', 6), 'output', struct('teller', 0, 'noemer', 1))

function Result = test_case(index)
    Result = test_cases(index)
endfunction

function Result = test_case_count()
    Result = size(test_cases)
endfunction

function show(index)
    tc = test_case(index)

    disp('Inputs')
    disp('n_elementen')
    disp(tc.input.n_elementen)
    disp('min_cycles')
    disp(tc.input.min_cycles)

    disp('Outputs')
    disp('teller')
    disp(tc.output.teller)
    disp('noemer')
    disp(tc.output.noemer)
endfunction

function Result = check(index)
    tc = test_case(index)

    [teller, noemer] = solve(tc.input.n_elementen, tc.input.min_cycles)

    Result = %t
    Result = Result & isequal(teller, tc.output.teller)
    Result = Result & isequal(noemer, tc.output.noemer)
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
