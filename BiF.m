%EXERCISE FOR BRACKET METHOD
%STEP 1: SET VALUES OF a AND b
function[] = Bisection()

format long
a = input('input a: ');
b = input('input b: ');
epsilon = input('input epsilon: ');

k = 0;
for iteration = 1:100000
    y1 = exp(-a) - log(a);
    y2 = exp(-b) - log(b);
    %STEP 2
    y12 = y1*y2;
    if y12 < 0
        %STEP 3
        c = (a + b)/2;
        y3 = exp(-c) - log(c);
    	%STEP 4
        k = k + 1;
        
        fprintf('Iteration %.0f\n', k);
        fprintf('a: %.6f\n', a);
        fprintf('b: %.6f\n', b);
        fprintf('c: %.6f\n', c);
        fprintf('f(a): %.6f\n', y1);
        fprintf('f(b): %.6f\n', y2);
        fprintf('f(c): %.6f\n\n', y3);
        
        if y3 > 0 %POSITIVE
            a = c;
        else %NEGATIVE
            b = c;
        end
        %STEP 5
        if abs(y3) <= epsilon
            break;
        else
        end 
    else
        error 'error interval';
    end
end
end