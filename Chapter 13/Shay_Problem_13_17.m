%Shay Sackett ENGR 156 Matlab
%Problem 13.17, numerical integration

clear,clc
y = @(x) 5.*x.^3 - 2.*x.^2 + 3;  %function of x using a handle

area = integral(y,-1,1);  %use the integral function to solve numerically for area

syms x  %create a symbolic variable x
y = 5.*x.^3 - 2.*x.^2 + 3; %symbolic variable version of equation

symbolic_area = double(int(y,-1,1));  %Find the solution to the integral symbolically

b = 1; a = -1; % limits of integration
analytical = (5/4)*(1 - 1) - (2/3)*(1 - (-1)) + 3*(1 - (-1)) %find the solution analytically

disp('Numerical Solution:')  %display a comparison of numerical vs symbolic integration
disp(area)
disp('Symbolic area:')
disp(symbolic_area)
disp('numerical, symbolical, and analytical solutions are all similar to one another')
 




