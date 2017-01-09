funcprot(0)
test_cases = list()
test_cases($+1) = struct('input', struct('blocks', [1,2,3]), 'output', struct('heights', 6))
test_cases($+1) = struct('input', struct('blocks', [1,2,3;1,1,1]), 'output', struct('heights', 10))
test_cases($+1) = struct('input', struct('blocks', [10,15,5;5,15,5]), 'output', struct('heights', 105))
test_cases($+1) = struct('input', struct('blocks', [10,15,5;5,15,5;10,20,5;20,15,5]), 'output', struct('heights', 525))
test_cases($+1) = struct('input', struct('blocks', [10,15,5;5,15,5;10,20,5;20,15,5;15,5,1;40,50,20;12,13,14]), 'output', struct('heights', 10177))
test_cases($+1) = struct('input', struct('blocks', [1,1,1;2,2,2;3,3,3;4,4,4;5,5,5;6,6,6;7,7,7;8,8,8;9,9,9;10,10,10;11,11,11;12,12,12;13,13,13;14,14,14;15,15,15;16,16,16;17,17,17;18,18,18;19,19,19;20,20,20;21,21,21;22,22,22;23,23,23;24,24,24;25,25,25;26,26,26;27,27,27;28,28,28;29,29,29;30,30,30]), 'output', struct('heights', 108345))
test_cases($+1) = struct('input', struct('blocks', [1,2,3;2,4,6;3,6,9;4,8,12;5,10,15;6,12,18;7,14,21;8,16,24;9,18,27;10,20,30;11,22,33;12,24,36;13,26,39;14,28,42;15,30,45;16,32,48;17,34,51;18,36,54;19,38,57;20,40,60;21,42,63;22,44,66;23,46,69;24,48,72;25,50,75;26,52,78;27,54,81;28,56,84;29,58,87;30,60,90]), 'output', struct('heights', 973710))

function Result = test_case(index)
    Result = test_cases(index)
endfunction

function Result = test_case_count()
    Result = size(test_cases)
endfunction

function show(index)
    tc = test_case(index)

    disp('Inputs')
    disp('blocks')
    disp(tc.input.blocks)

    disp('Outputs')
    disp('heights')
    disp(tc.output.heights)
endfunction

function Result = check(index)
    tc = test_case(index)

    [heights] = solve(tc.input.blocks)

    Result = %t
    Result = Result & isequal(heights, tc.output.heights)
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
