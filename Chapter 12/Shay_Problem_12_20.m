%Shay Sackett ENGR 156 Matlab
%Problem 12.20, equations

 
syms x y  %set up symbolic variables

eq1 = x^2 + y^2 == 42;  %set up equation 1
eq2 = x + 3*y + 2*y^2 == 6;  %set up equation 2

[X,Y] = solve(eq1,eq2)  %solve for x and y

%I do not think I could have solved these using matrices






