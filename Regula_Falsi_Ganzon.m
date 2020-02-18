%EXERCISE FOR REGULA FALSI
%STEP 1: SET VALUES OF a AND b
function[] = Regula_Falsi()

format long
a = input('input a: ');
b = input('input b: ');
epsilon = input('input epsilon: ');

k = 0;
for iteration = 1:100
    y1 = exp(-a) - log(a);
    y2 = exp(-b) - log(b);
    %STEP 2
    y12 = y1*y2;
    if y12 < 0
        %STEP 3
        c = a - ((y1 *(b-a))/(y2 - y1));
        y3 = exp(-c) - log(c);
    	%STEP 4
        k = k + 1;
        
        fprintf('Iteration %.0f\n', k);
        fprintf('A: %.6f\n', a);
        fprintf('B: %.6f\n', b);
        fprintf('C: %.6f\n', c);
        fprintf('f(A): %.6f\n', y1);
        fprintf('f(B): %.6f\n', y2);
        fprintf('f(C): %.6f\n\n', y3);

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