%Shay Sackett MATLAB ENGR 156
%Problem 7.15 asks us to do various conversions between the English and SI
%measurement systems

%Part A: Use fprintf and disp to display conversions


z = input(' Enter the increment for the kW values:' ); %prompt user for input to program

kW = 0:z:15; %make kW vector

hp = 550.*kW ./ 737.56; %kW to hp conversion

my_table = [kW; hp]; % table of results
disp('Kilowatt to Horsepower conversion') %display message to screen
disp('kW:     hp:') %display headers
fprintf('%3.0f %10.4f \n', my_table); % use fprintf and disp to display table of conversions

%% Part B: 
%Repeat Part A but use the table function instead of fprintf and disp('')

z = input(' Enter the increment for the kW values:' ); %prompt user for input to program

kW = 0:z:15; %make kW vector

hp = 550.*kW ./ 737.56; %kW to hp conversion


kW = kW'; hp = hp'; % make variables columns to allow them for use in table function
disp(table(kW, hp, 'VariableNames', {'Kilowatts', 'Horsepower'})) %Display table without "ans = " part using disp(), use table() function to make nice headings and table. 

%% Part C: 
% Convert ft-lb to btu/h

z = input(' Enter the increment for the ft-lb values:' ); %prompt user for input to program
w = input(' Enter the desired final ft-lb value:') %prompt user to input final value for ft-lb program

ft_lb = 0:z:w; % set up ft_lb vector with user input

btu_h = ft_lb.*(2544.5/55); %Convert ft_lb to Btu/h using provided conversion factor

my_table = [ft_lb; btu_h]; %Set up vectors in a matrix so that fprintf can read them 

disp('Converting from ft-lb to Btu/h we get: ') %Display text to screen
disp('ft_lb:      Btu/h:') %Create column headers
fprintf('%2.0f %17.4f \n', my_table) %use fprintf to create a table

%% Part D: 
% Do the same calculations as in part C but use the disp() and table()
% function instead

z = input(' Enter the increment for the ft-lb values:' ); %prompt user for input to program
w = input(' Enter the desired final ft-lb value:'); %prompt user to input final value for ft-lb program

ft_lb = 0:z:w; % set up ft_lb vector with user input

btu_h = ft_lb.*(2544.5/55); %Convert ft_lb to Btu/h using provided conversion factor

ft_lb = ft_lb'; % make ft_lb a column vector.
btu_h = btu_h'; % Make Btu_h a column vector

disp(table(ft_lb,btu_h, 'VariableNames', {'Foot_Pounds', 'Btu_h'})) %Display data using table function and add some nicer column headers. Use Disp() to clean up output even more

%% Part E:
% Convert from kW to Btu_h, hp, and ft-lbs. 

start = input('Enter the beginning kW value: ');                              %Ask user for the input for the beginning kW values
number_entries = input('Enter the desired number of entries in the table: '); %Ask user for the input for the kW increment
final = input('Enter the final kW value: ');                                  %Ask user for the final value in the table

kW = linspace(start,final,number_entries);     %define the kW vector with the user supplied inputs

btu_h = kW.*3412.14; %Convert kW to btu_h
hp = kW.*(550./ 737.56); %kW to hp conversion
ft_lb = kW.*737.56; %kW to ft_lb conversion

conversions = [kW; btu_h; hp; ft_lb ]; % Put all the conversions into a table

disp('Converting kW to btu_h, hp, and ft_lb') %display message to screen
disp('kW:      Btu_h:          HP:           ft_lb:') %display message to screen 
fprintf('%1.0f %15.4f %10.4f  %15.4f \n', conversions) %Print Values to the Screen, space everything out nicely

%% Part F: 
% Repeat part E using the table function
% Convert from kW to Btu_h, hp, and ft-lbs. 

start = input('Enter the beginning kW value: ');                              %Ask user for the input for the beginning kW values
number_entries = input('Enter the desired number of entries in the table: '); %Ask user for the input for the kW increment
final = input('Enter the final kW value: ');                                  %Ask user for the final value in the table

kW = linspace(start,final,number_entries);     %define the kW vector with the user supplied inputs

btu_h = kW.*3412.14; %Convert kW to btu_h
hp = kW.*(550./ 737.56); %kW to hp conversion
ft_lb = kW.*737.56; %kW to ft_lb conversion

ft_lb = ft_lb'; % make ft_lb a column vector.
btu_h = btu_h'; % Make Btu_h a column vector
hp = hp'; %Make hp a column vector
kW = kW'; % Make kW a column vector 

disp(table(kW, btu_h, hp, ft_lb)) %Display data using table function. Use Disp() to clean up output






