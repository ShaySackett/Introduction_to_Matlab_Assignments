%Shay Sackett MATLAB ENGR 156
%Problem 9.2 sum a vector x using a while loop

x = [1 23 43 72 87 56 98 33];   %given vector
vect_sum = 0;                     %initialize the value of vect_sum
n = 1;

while n <= length(x)               %Set up the while loop
    vect_sum = vect_sum + x(n);  %add the next value of x to the current value of vect_sum
    n = n+1; %move index amount up by 1
end

disp(vect_sum)  %display the vector sum using the while loop
disp(sum(x))   % check vect_sum with sum function
    
