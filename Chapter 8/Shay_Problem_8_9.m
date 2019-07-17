%Shay Sackett MATLAB ENGR 156
%Problem 8.9 asks us various questions about artic sea ice
%Part A:

year = 1979:2010; %create a vector of the years
sept_avg = [7.19 , 7.83 , 7.24 , 7.44 , 7.51 , 7.1 , 6.91 , 7.53 , 7.47 , 7.48 , 7.03 , 6.23 , 6.54 , 7.54 , 6.5 , 7.18 , 6.12 , 7.87 , 6.73 , 6.55 , 6.23 , 6.31 , 6.74 , 5.95 , 6.13 , 6.04 , 5.56 , 5.91 , 4.29 , 4.72 , 5.38 , 4.92 , 4.61 , 3.62 , 5.35 , 5.28 , 4.63
]; 
mar_avg = [16.48 , 16.15 , 15.65 , 16.17 , 16.13 , 15.65 , 16.09 , 16.1 , 15.99 , 16.16 , 15.54 , 15.9 , 15.52 , 15.5 , 15.9 , 15.62 , 15.35 , 15.16 , 15.61 , 15.69 , 15.45 , 15.3 , 15.64 , 15.46 , 15.52 , 15.08 , 14.77 , 14.45 , 14.66 , 15.27 , 15.16 , 15.14 , 14.6 , 15.26 , 15.1 , 14.83 , 14.39 , 14.43
]; % Get monthly averages, values pulled from excel

plot(year, mar_avg(1:32), year,sept_avg(1:32)) %Plot year vs February and September averages, from 1979:2010. Make sure month values are only pulling 31 values from matrix 
grid on
hold on
x_points = [1979 2010] %define the x and y coordinates for the average line in march and september
y_mar = [15.52 15.52];
y_sept = [6.51 6.51];

plot(x_points,y_mar,x_points,y_sept) %plot the mean lines for september and march

%% Part B: 
% use the find command to find which years exceeded the average september
% values for 1979-2010

year(find(sept_avg > y_sept(1,1))) %use find to find when the september average is larger than the month of september for the data we have. Find gives an index value, so plug that index value back into year to get what years this happened.  


%% Part C: 
% use the find command to find which years exceeded the average september
% values for 1979-2010

year(find(mar_avg(1:32) < 15.52)) %use find to find when the march average is larger than the month of march for the data we have. Find gives an index value, so plug that index value back into year to get what years this happened.  
