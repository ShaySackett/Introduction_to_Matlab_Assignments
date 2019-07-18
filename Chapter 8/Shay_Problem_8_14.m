%Shay Sackett MATLAB ENGR 156
%Problem 8.14 asks us to create a program that tells us what to wear
%depending on the temperature. 

temp = input('What is the temperature? \n') %ask the user for input

if temp >= 80                        % If temperature is above 80 degrees
    disp('Wear shorts!')             %display message
elseif temp > 60                     % If temperature is above 60 degrees
    disp('It is a beautiful day!')   %display message
else                                 % anything else
    disp('wear a jacket or coat')    %display message
end                                  %break from loop

