function [x,k] = Gauss(A,b,epsilon)

loop = true;
k = 0;
while loop == true
    if k == 0
        U = 0;
        O = 0;
        P = 0;
    else   
    end
    
    x1 = (b(1) - (A(1,2)*(O)) - (A(1,3)*(P)))/A(1,1);
    x2 = (b(2) - (A(2,1)*(U))- (A(2,3)*(P)))/A(2,2);
    x3 = (b(3) - (A(3,1)*(U))- (A(3,2)*(P)))/A(3,3);

    error1 = abs(x1 - U);
    error2 = abs(x2 - O);
    error3 = abs(x3 - P);

    U = x1;
    O = x2;
    P = x3;

    if error1 <= epsilon && error2 <= epsilon && error3 <= epsilon
       loop = false;
    end
    
    k = 1 + k;
end
x = [x1,x2,x3]
k = k
end 