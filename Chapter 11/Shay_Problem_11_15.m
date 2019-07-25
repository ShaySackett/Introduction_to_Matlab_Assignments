% Shay Sackett Engineering 156 MATLAB 
% Problem 11.15, arrays

A = [1 2; 3 4];  %given array
B = [10 20; 30 40]; %given array
C = [3 16; 9 12]; %given array

%Part A: 

ABC(:,:,1) = A;  %add the first page to a 2x2x3 array
ABC(:,:,2) = B; %add the second page to a 2x2x3 array
ABC(:,:,3) = C; %add the third page to a 2x2x3 array

%% Part B: 

Column_A1B1C1 = [ABC(:,1,1), ABC(:,1,2), ABC(:,1,3)] %combine all 3 columns into their own array

%% Part C:

Row_A2B2C2 = [ABC(2,:,1); ABC(2,:,2); ABC(2,:,3)] %Extract all 3 rows into their own array

%% Part D: 

value = ABC(1,2,3)  %extract row 1 col 2 page 3 




