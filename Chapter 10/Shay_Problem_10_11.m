% Shay Sackett Engineering 156 MATLAB 
% Problem 10.11, Matrix exponentiation

A = [-1 3; 4 2]; %Enter matrix A

% Part A: 

disp('A raised to an array power: ') %display message

disp(A.^A) %disp array power

%% Part B:

disp('A raised to the matrix power') %display message
disp(A^2) %display matrix power

%% Part C:

disp('These two answers are different because A raised to the array power squares each individual term in the matrix while A raised')
disp('to the second power is the same as saying A*A')



