funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('te_betalen', 100, 'betaald', 200), 'output', struct('aantal_muntstukken', 1))
test_cases($+1) = struct('input', struct('te_betalen', 90, 'betaald', 200), 'output', struct('aantal_muntstukken', 2))
test_cases($+1) = struct('input', struct('te_betalen', 89, 'betaald', 200), 'output', struct('aantal_muntstukken', 3))
test_cases($+1) = struct('input', struct('te_betalen', 562, 'betaald', 1000), 'output', struct('aantal_muntstukken', 7))
test_cases($+1) = struct('input', struct('te_betalen', 778, 'betaald', 2000), 'output', struct('aantal_muntstukken', 8))

function Result = test_case(index)
    Result = test_cases(index)
endfunction

function Result = test_case_count()
    Result = size(test_cases)
endfunction

function show(index)
    tc = test_case(index)

    disp('Inputs')
    disp('te_betalen')
    disp(tc.input.te_betalen)
    disp('betaald')
    disp(tc.input.betaald)

    disp('Outputs')
    disp('aantal_muntstukken')
    disp(tc.output.aantal_muntstukken)
endfunction

function Result = check(index)
    tc = test_case(index)

    [aantal_muntstukken] = solve(tc.input.te_betalen, tc.input.betaald)

    Result = %t
    Result = Result & isequal(aantal_muntstukken, tc.output.aantal_muntstukken)
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
