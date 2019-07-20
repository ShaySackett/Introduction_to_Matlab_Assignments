%Shay Sackett MATLAB ENGR 156
%Problem 9.16 asks us to create a function for approximating pi

function output = pi_approx  %define function

% initialize variables
n = 2;
final_pi = 0;
over_it = true;
%input first value in senuence and sum, since those are different than the rest 
pi_series = 1;
pi_sum = 1;

while(n <= 3002) %while true, 1 is logical true, keep running this section of code until conditions are met and if statement breaks from loop
    alt_1s = (-1)^(n-1); %define alternating 1's and -1's
    top = 1 ;      %top part of pi series
    bottom = 2*n - 1; %bottom part of pi series
    pi_series(n) =  alt_1s*(top/bottom); % the ith part of the pi series is this value
    
    pi_sum(n) = sum(pi_series); %sum the entire current series of pi, store it to a new array
    
    if abs(pi_sum(n) - pi_sum(n-1)) < .001 %if the current value of pi and the last value of pi have a difference of .001
        final_pi = pi_sum(n);
        over_it = false; 
        break %jump out of if and while statement
    else
        n = n + 1;
       
    end
end

if over_it == true
    disp('The max number of iterations has been reached, no accurate value for pi')
else
output = final_pi;   %the final approximation of pi/4 is output to function 
end

