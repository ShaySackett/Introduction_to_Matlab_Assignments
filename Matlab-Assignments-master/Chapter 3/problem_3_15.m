%Problem 3.15
%Problem asks us to find max and min for a dataset of temperature readings

thermocouple_readings = [8.43E+01 8.64E+01 8.52E+01 8.71E+01 8.35E+01 8.48E+01 8.50E+01 8.53E+01 8.53E+01 8.52E+01 8.23E+01 8.47E+01 8.36E+01; 
    9.00E+01 8.95E+01 8.86E+01 8.89E+01 8.89E+01 9.04E+01 8.93E+01 8.95E+01 8.89E+01 8.91E+01 8.95E+01 8.94E+01 8.98E+01;
    8.67E+01 8.76E+01 8.83E+01 8.53E+01 8.03E+01 8.24E+01 8.34E+01 8.54E+01 8.63E+01 8.53E+01 8.90E+01 8.73E+01 8.72E+01]

% ^^ values for thermocouple readings 1,2, and 3. Sensor 1 is row 1, sensor
% 2 is row 2,etc. 


thermocouple_readings = thermocouple_readings';  % Transpose thermocouple readings to work on the columns more easily

thermocouple_max = max(thermocouple_readings, [], 1) % Output for thermocouples 1,2, and 3 respectively. 

%%  Part b
% find the minimum for each of the thermocouples

thermocouple_min = min(thermocouple_readings, [], 1) % Find the minimum output for all thermocouples, 1,2 and 3 respectively 





