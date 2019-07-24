% Shay Sackett Engineering 156 MATLAB 
% Problem 10.18, system of equations

%Part a: 

%remember AX = B

A = [-2 1; 1 1]; %coefficents of equations
B = [3;10]; %constants on right side of equation

X = A\B %solve by left division


X_2 = inv(A) * B %Solve by inverse matrices

%% Part B: 
 A = [5 3 -1;
     3 2 1;
     4 -1 3]; %coefficents of equations
 B = [10; 4; 12;]; %constants on right side of equation
 
 X = A\B %solve for x using left division
 
 X_2 = inv(A) * B %solve for x using inverses
 
 %% Part C: 
 
 A = [3 1 1 1;
     1 -3 7 1;
     2 2 -3 4;
     1 1 1 1];
 B = [24; 12; 17; 0];
 
 X = A\B %solve for x using left division
 
 X_2 = inv(A) * B %solve for x using inverses
 
