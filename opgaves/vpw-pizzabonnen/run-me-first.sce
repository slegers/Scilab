funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('pizzas', [5], 'bonnen', [0,1]), 'output', struct('prijs', 0))
test_cases($+1) = struct('input', struct('pizzas', [5,2,1], 'bonnen', [0,1]), 'output', struct('prijs', 3))
test_cases($+1) = struct('input', struct('pizzas', [5,2,1], 'bonnen', [1,1]), 'output', struct('prijs', 6))
test_cases($+1) = struct('input', struct('pizzas', [20,15,10,5], 'bonnen', [0,1;1,1]), 'output', struct('prijs', 20))
test_cases($+1) = struct('input', struct('pizzas', [100,90,80,70,60,50,40,30,20,10], 'bonnen', [1,1;1,1;1,1]), 'output', struct('prijs', 340))
test_cases($+1) = struct('input', struct('pizzas', [1,2,3,4,5,6,7,8,9,10], 'bonnen', [3,1;2,1;2,1;2,1;1,1;1,1;1,1;1,1;1,1;1,1]), 'output', struct('prijs', 30))
test_cases($+1) = struct('input', struct('pizzas', [1,2,3,4,5,6,7,8,9,10], 'bonnen', [3,1;2,1;2,1;2,1;1,1]), 'output', struct('prijs', 37))
test_cases($+1) = struct('input', struct('pizzas', [20,18,18,16,16,16,14,14,14,12,10], 'bonnen', [3,1;2,4;1,2;2,1;4,2]), 'output', struct('prijs', 74))
test_cases($+1) = struct('input', struct('pizzas', [10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160,170,180,190,200,210,220,230,240,250,260,270,280,290,300], 'bonnen', [6,2;8,3;7,2;9,4;5,2;5,1;3,2;2,1;7,3;3,2]), 'output', struct('prijs', 3210))
test_cases($+1) = struct('input', struct('pizzas', [10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160,170,180,190,200,210,220,230,240,250,260,270,280,290,300], 'bonnen', [6,2;8,8;7,2;9,4;5,2;5,1;3,2;2,1;7,3;3,2]), 'output', struct('prijs', 2830))

function Result = test_case(index)
    Result = test_cases(index)
endfunction

function Result = test_case_count()
    Result = size(test_cases)
endfunction

function show(index)
    tc = test_case(index)

    disp('Inputs')
    disp('pizzas')
    disp(tc.input.pizzas)
    disp('bonnen')
    disp(tc.input.bonnen)

    disp('Outputs')
    disp('prijs')
    disp(tc.output.prijs)
endfunction

function Result = check(index)
    tc = test_case(index)

    [prijs] = solve(tc.input.pizzas, tc.input.bonnen)

    Result = %t
    Result = Result & isequal(prijs, tc.output.prijs)
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
