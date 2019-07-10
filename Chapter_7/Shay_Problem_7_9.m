%Shay Sackett MATLAB ENGR 156
%Problem 7.9 asks us to create a multiplication table using fprintf

x = 1:13; % create array from 1-13
y = 6; %multiplication factor

result = y.*x; %result of multiplication

my_table = [x;result]; % Give fprintf a 2x2 array

fprintf('%.0f times 6 is %.0f \n ', my_table); % give fprintf 2x2 array, reads down first column then the next column, 0 decimal spacings after printing answer