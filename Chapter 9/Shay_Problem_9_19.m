%Shay Sackett MATLAB ENGR 156
%Problem 9.19 asks us to compare the speed of using loops versus matlab's
%built in statements

%Part A:

x = rand(1,100000); % create a vector of psuedo random values from 1 to 100000
tic                 % start a timer  
y = x.^2;    %square every value in the matrix
toc    %End the timer, see how long it took 

%% Part B: 

% Perform the same operation with a for loop

clear %clear variables before beginning
x = rand(1,100000); % create a vector of psuedo random values from 1 to 100000
tic %start a timer
for i = 1:length(x)  %For loop with index from 1 to 1000000
    y(i) = x(i).^2;  % square each value in the vector individually
end
toc  %end the timer

%% Part C:

%Showing that suppressing output enourmously speeds up execution of the
%code  PRESS CTRL C IN COMMAND WINDOW WHEN YOU ARE BORED TO TERMINATE CODE


clear %clear variables before beginning
x = rand(1,100000); % create a vector of psuedo random values from 1 to 100000
tic %start a timer
for i = 1:length(x)  %For loop with index from 1 to 1000000
    y(i) = x(i).^2;  % unsuppress this line to see a never ending line of values, square each value in the vector individually
end
toc  %end the timer

%% Part D:

% add (sin(.3) + cos(pi/3)*5! to every value in the x vector with a for
% loop. It will be relatively slow

clear %clear variables before beginning
x = rand(1,100000); % create a vector of psuedo random values from 1 to 100000
tic %start a timer
for i = 1:length(x)  %For loop with index from 1 to 1000000
    y(i) = x(i) + (sin(.3) + cos(pi/3))*factorial(5);  % add a new value to every value in vector y
end
toc  %end the timer

%% Part E:

% Repeat part B but use a prepopulated set of values for y to  to the vector with a for loop each time

clear %clear variables before beginning
x = rand(1,100000); % create a vector of psuedo random values from 1 to 100000
y = zeros(1,100000); %prepopulate the vector y with 100000 values of 0
tic %start a timer
for i = 1:length(x)  %For loop with index from 1 to 1000000
    y(i) = x(i).^2;  % square each value in the vector individually
end
toc  %end the timer

%Prepopulating with the vector y is indeed faster than adding a new value
%to y each time through the loop. 
