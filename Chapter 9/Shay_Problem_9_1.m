%Shay Sackett MATLAB ENGR 156
%Problem 9.1 asks us to sum a vector

x = [1 23 43 72 87 56 98 33];   %given vector
vect_sum = 0;                      %initialize the value of vect_sum


for i = 1:length(x)                %For loop
    vect_sum = vect_sum + x(i);  %add the next value of x to the current value of vect_sum
end


disp(vect_sum)  %display the vector sum using the for loop
disp(sum(x))   % check vect_sum with sum function
