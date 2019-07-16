%Shay Sackett MATLAB ENGR 156
%Problem 7.15 asks us to do various conversions between the English and SI
%measurement systems

%Part A:

z = input(' Enter the increment for the kW values:' );
%z = 3;
kW = 0:z:15; %make kW vector

hp = 550.*kW / 737.56; %kW to hp conversion

my_table = [kW; hp] % table of results

disp(fprintf('%.0f kilowatts is %.4f horsepower \n', my_table)); % use fprintf and disp to display table of conversions