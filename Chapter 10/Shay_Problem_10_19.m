% Shay Sackett Engineering 156 MATLAB 
% Problem 10.19, Linear Equations

A = [3 4 2 -1 1 7 1;
    2 -2 3 -4 5 2 8;
    1 2 3 1 2 4 6;
    5 10 4 3 9 -2 1;
    3 2 -2 -4 -5 -6 7;
    -2 9 1 3 -3 5 1;
    1 -2 -8 4 2 4 5]; %constants of equations
B = [42; 32; 12; -5; 10; 18; 17;];  %constants on right side of equation

tic % Start timer
X = A\B; %solve via left division
t = toc; % Stop the timer
disp('Time for left division was:') % display message
disp(t) %display total time for operation

tic % Start timer 
X_2 = inv(A) * B %solve via left division
t = toc; % Stop the timer 
disp('Time for solving via inverse is :') % display message 
disp(t) %display total time for operation

%Evidently solving for X via inverse is slower