%Shay Sackett MATLAB ENGR 156
%Problem 8.15 asks us to create a program that evaluates a matrix and sends
%an error if an invalid number appears
%Part A: 

saws = [1 4 5 3 7 5 3 10 12 8 7 4]; %Saws matrix

if find(saws < 0 )               %Find looks for values less than 0, if true (anything other than 0), statements states there is an invalid number
    disp('Invalid number found') %display message
else                             %if find statement is fals (eg value of 0) 
    disp('All Valid')            %display message to user
end                              %break from loop

%% Part B: 
% same as part A but we make some invalid #'s in the array, the program
% should say an invalid number has been found 


saws = [1 4 5 -3 7 5 3 10 -12 8 -7 4]; %Saws matrix

if find(saws < 0 )               %Find looks for values less than 0, if true (anything other than 0), statements states there is an invalid number
    disp('Invalid number found') %display message
else                             %if find statement is fals (eg value of 0) 
    disp('All Valid')            %display message to user
end                              %break from loop

