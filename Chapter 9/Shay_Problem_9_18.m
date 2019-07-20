%Shay Sackett MATLAB ENGR 156
%Problem 9.18 asks us to find averages using nested for loops

% Enter table_8_10 into matrix
table_8_10 = [3590.66	3614.17	3622.14	3620.55	3636.91	3604.42	3578.69	3593.57;3590.66	3612.05	3620.16	3614.95	3635.28	3601.47	3575.55	3592.23
; 3589.77	3610.43	3619.41	3610.73	3635.33	3598.96	3574.76	3591.02
; 3594.09	3611.26	3620.5	3611.93	3635.76	3596.53	3577.56	3590.18
; 3610.81	3629.09	3625.96	3623.13	3636.83	3599.4	3589.38	3597.27
;3631.05	3640.49	3638.82	3648.98	3633.9	3600.07	3609.19	3613.54
;3633	3641.14	3636.52	3660.86	3628.45	3594.17	3608.05	3612.62
;3629.55	3637.5	3634.55	3655.34	3623.62	3589.64	3605.82	3609.07
;3626.9	3635.37	3633.66	3653.01	3621.56	3591.25	3605.53	3606.01
;3623.82	3633.52	3634.08	3650.27	3619.46	3590.88	3605.57	3606.44
3621.9	3631.1	3630.31	3645.67	3615.1	3587.9	3601.87	3605.47
;3617.89	3626.22	3626.54	3639.75	3609.82	3584.43	3597.75	3600.8
;]  ;                                                                        

%Part A: find the average elevation for each year
years = 2008:2015;  %years matrix
elevation_sum = 0; %elevation_sum_matrix
yearly_mean = 0; %yearly_mean
columns = 0;
rows = 0;

for columns = 1:8  %use nested for loop structure to find the sum, and then find the mean without using find function
    for rows = 1:12
       elevation_sum = elevation_sum + table_8_10(rows,columns); %Elevation sum
       elevation_mean = elevation_sum/(columns*rows); % Elevation_mean
    end
end

for i = 1:8 %Find the mean for each year (each column in the table)
yearly_mean(i) = mean(table_8_10(:,i));  %make vector of mean values
end

table = [years; yearly_mean];  %Create a table

disp('The average elevation for the 8 years the data was collected is: ') %display message
disp(elevation_mean) %disp mean value
disp('') %display a blank line
fprintf('The average rainfall for %4.0f was %6.2f feet above sealevel \n',table) %display data in a readable format

%% Part B:

%determine how many months from each year exceed the overall average for
%the 8 year period
counter = zeros(1,8); %initialize counter vector with prepopulated zero values
columns = 0;
rows = 0;

for columns = 1:8  %use nested for loop structure to find the sum, and then find the mean without using find function
    for rows = 1:12
      if table_8_10(rows,columns) > elevation_mean  %if the value at the table location is greater than the average elevation,  
          counter(columns) = counter(columns) + 1;  %add a count to the current counter column. Each column correpsonds to a specific year
      end
    end
end


table_2 = [years; counter];   %make a new table of years vs counts
fprintf('In %4.0f there were %1.0f months where water level exceeded the overall elevation average \n', table_2)  %display data in a readable format

%% Part C: 

% Create a report that lists the month number and year for all the data
% values that exceed the average
year_readout = 0;  %initialize variables
table_3 = 0;
columns = 0;        %Clear row and columns just in case
rows = 0;

disp('The data points that exceed the average are: ')  %display message
pause(1);                                   %pause for a second to allow user to maybe see first message before it is drowned out by other data
for columns = 1:8  %use nested for loop structure 
    for rows = 1:12 
      if table_8_10(rows,columns) > elevation_mean  %if the value at the table location is greater than the average elevation,  
          switch columns  %use switch case to evaluate what to print out based on the column position index
              case 1
                  year_readout = 2008; % assign a year value for every case/column value
              case 2
                  year_readout = 2009;
              case 3
                  year_readout = 2010;
              case 4
                  year_readout = 2011;
              case 5
                   year_readout = 2012;
              case 6
                   year_readout = 2013;
              case 7
                   year_readout = 2014;
              otherwise
                   year_readout = 2015;
          end
          table_3 = [rows; year_readout];  %create a table that displays the month in one row and the year in the other       
          fprintf('Month %.0f year %.0f \n', table_3) %send that table to fprintf and read it out on the screen
          
      end
    end
end

%% Part D: 
%Part D says to determine the average elevation of the water for each month
%for the 8 year period. 
monthly_sum = 0; %define the variables
month = 0;  

for rows = 1:12  %create a nested for loop with the rows on the outer loop and the columns on the inner loop
    for columns = 1:8  %index through each column, this goes through the value for each row
        monthly_sum = monthly_sum + table_8_10(rows,columns);  %add up all the values in each row as the program indexes
    end
    if columns == 8 %if the column index is at the last position in the row
        monthly_mean = monthly_sum ./8;  %find the mean of all the values
        table = [rows; monthly_mean];  %create a table that stores the value of the month and the monthly_average
        fprintf('The average elevation for month %2.0f is % 4.2f \n', table) %print out the average elevation for each month in a neat format
        monthly_sum = 0; %reset the sum for the month to 0 so that the sum doesn't keep growing as we loop through the program.
    end
    end
    










        


