% Problem 4.4
% Part A: Read data file and print number of sensors and numbers of seconds
% of data contained in file. 

Sensor_Data; % Load in Sensor Data values

[rows, columns] = size(Sensor_Data); % output dimensions of Sensor_Data Matrix

Number_of_sensors = columns - 1 % Find the number of sensors by not counting the row that labels time

Number_of_Second_readings = rows % The total number of readings in the file is just the number of rows of data

%% Part B 
% Find the minimum and maximum value recorded on each sensor. Determine
% what time they occured. 

Raw_Sensor_Data = Sensor_Data(:,2:end); % Make a new matrix of just sensor readings, without time. 

[max_value, max_row_position] = max(Raw_Sensor_Data); % Find the max time and at what position they occur at
[min_value, min_row_position] = min(Raw_Sensor_Data); % Find the min time and at what position they occur at

Time_of_Max_Readings = Sensor_Data(max_row_position,1) % Find the time of the readings by using the row position previously found and pulling that row position from the first column of sensor_data which corresponds to time.
Time_of_Min_Readings = Sensor_Data(min_row_position,1) % Find the time of the readings by using the row position previously found and pulling that row position from the first column of sensor_data which corresponds to time.

%% Part C
% Find mean and standard Deviation for each sensor. 
% Find mean and standard deviation for all data collected

Mean_individual_sensors = mean(Raw_Sensor_Data) %Find mean of each individual sensor data set
Standard_deviation_individual_sensors = std(Raw_Sensor_Data) % Find standard deviation of individual sensor data

Mean = mean(Mean_individual_sensors) % Find mean for all sensor data
standard_deviation = std(Standard_deviation_individual_sensors) % Find standard deviation for all sensor data

