%Problem 4.3
% Part a create column vector times

times = 0:2:24;
times = times(:)

%% Part B
% thermocouple data

thermocouple =  [8.43E+01 8.64E+01 8.52E+01 8.71E+01 8.35E+01 8.48E+01 8.50E+01 8.53E+01 8.53E+01 8.52E+01 8.23E+01 8.47E+01 8.36E+01; 
    9.00E+01 8.95E+01 8.86E+01 8.89E+01 8.89E+01 9.04E+01 8.93E+01 8.95E+01 8.89E+01 8.91E+01 8.95E+01 8.94E+01 8.98E+01;
8.67E+01 8.76E+01 8.83E+01 8.53E+01 8.03E+01 8.24E+01 8.34E+01 8.54E+01 8.63E+01 8.53E+01 8.90E+01 8.73E+01 8.72E+01]  % thermocouple data

thermocouple = thermocouple'; %Transpose Thermocouple data to get it looking like provided graphic

%% Part C
%Combine times and thermocouple data

Table = [times, thermocouple] % Create table to make our data look like table 4.3

%% Part D
% use max to determine the times at which maxima and minima occur in each
% column

[max_value, row] = max(thermocouple); % In each column of thermocouple, find the maximum value, then print the row position of those max values

times = times(row, end) % Use the row positions found in the previous step to find the corresponding times in the times vector. 