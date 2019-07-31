%Shay Sackett ENGR 156 Matlab
%Problem 13.1, Interpolation

%Part A: 

x = 1:6; %Volume values
y = [2494 1247 831 623 499 416]; %Pressure values

pressure = interp1(x,y,3.8); %use linear interpolation to find answer at 3.8

fprintf('When the volume is 3.8 m^3, pressure is about %3.2f kPa \n', pressure)  %print the answer in a nice format with fprintf

%% Part B: 

x = 1:6; %Volume values
y = [2494 1247 831 623 499 416]; %Pressure values

pressure = interp1(x,y,3.8,'spline'); %use cubic spline interpolation to find answer at 3.8

fprintf('Using cubic spline interpolation, when the volume is 3.8 m^3, pressure is about %3.2f kPa \n', pressure)  %print the answer in a nice format with fprintf

%% Part C: 

x = 1:6; %Volume values
y = [2494 1247 831 623 499 416]; %Pressure values

volume = interp1(y,x,1000); %use linear interpolation to find volume at 1000 kPa

fprintf('Using linear interpolation, when the pressure is 1000 kPa, volume is about %3.4f m^3 \n', volume)  %print the answer in a nice format with fprintf

%% Pard D: 

x = 1:6; %Volume values
y = [2494 1247 831 623 499 416]; %Pressure values

volume = interp1(y,x,1000,'spline'); %use cubic spline interpolation to find volume at 1000 kPa

fprintf('Using cubic spline interpolation, when the pressure is 1000 kPa, volume is about %3.4f m^3 \n', volume)  %print the answer in a nice format with fprintf



