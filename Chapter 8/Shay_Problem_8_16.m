%Shay Sackett MATLAB ENGR 156
%Problem 8.16 asks us to find the total contributions to a 401k plan. 

income = input('Enter your Yearly Income \n');     %ask user to input income

if income < 30000                                                    % if statement
    total_compensation = (income*.10) + (income*.10);                   %calculate total compensation if income < 30000
elseif income < 60000                                                   % if above isn't true:
    total_compensation = (income*.10) + 3000 + (income - 30000*.05);  %calculate total compensation if income < 60000
elseif income < 100000                                              % if above isn't true:
    total_compensation = 6000 + (income-60000*.08) + 3000 + 1500;   % calculate total compensation if income < 100000  
else                                                                   %if none of the above are true
    total_compensation = 6000 + 3200;                               % % calculate total compensation if income > 100000  
    
end

disp(total_compensation)   %display to total compensation