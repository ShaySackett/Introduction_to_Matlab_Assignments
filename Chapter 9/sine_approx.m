%Shay Sackett MATLAB ENGR 156
%Problem 9.15 asks us to create a function for approximating sin(x)

function output = sine_approx(x)  %define function

% initialize variables
n = 2;
i = 2;
q = 2;
final_sine = 0;
%calculate first value in sequence 
sincalc = x;
sin_sum = x;

while(1) %while true, 1 is logical true, keep running this section of code until conditions are met and if statement breaks from loop
    alt_1s = (-1)^(n-1); %define alternating 1's and -1's
    top = x^(2*n-1) ;      %top part of sine series
    bottom = factorial(2*n - 1); %bottom part of sine series
    sincalc(i) =  alt_1s*(top/bottom); % the ith part of the sine series is this value
    
    sin_sum(q) = sum(sincalc); %sum the entire current series of sin, store it to a new array
    
    if abs(sin_sum(q) - sin_sum(q-1)) < .001 %if the current value of sin and the last value of sin have a difference of .001
        final_sine = sin_sum(q);
        break %jump out of if and while statement
    else
        i = i + 1;
        n = n + 1;
        q = q + 1;
    end
end

output = final_sine;   %the final approximation of sin is output to function 

