% Problem 3.5 
% Problem is asking us to find out how an air conditioning unit handles different conditions
% This first part is part A; it asks us to find out how much heat the
% air-conditioner is able to remove from the home per second. 

heat_producers = [20 4 1]; % array listing all heat sources; 20 lightbulbs, 4 appliances, and 1 leak representing all heat from outside
heat_rates = [100 500 3000]; % vector listing the rates of heat loss for the lightbulb, appliances, and leak respectively in units of J/S 

total_heat_per_second = sum(heat_producers.*heat_rates)

%% Part B

% part B asks us to find out how many air-conditioning units are needed to
% cool this house if one unit can cool at a rate of 2000 J/S

cooling_rate = 2000; % speed in J/S at which one air conditioning unit can cool a house. 

total_units = ceil(total_heat_per_second/cooling_rate) % Total units needed to cool the house. divide heat per second by cooling rate, and round up the number of cooling units needed so it is a whole number. 