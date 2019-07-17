% Problem 3.3
% This problem asks us to find out how many rabbits we will have after 10
% years of a continuous growth rate of 90%

Population_initial = 100; growth_rate = .9; time_years = 10; % define constants, intial population, growth rate, and time respectively

Population_final = Population_initial*exp(growth_rate*time_years); %Formula to find total rabbit population after 10 years

Population_whole_number = floor(Population_final) %Rounds the number of rabbits down to the nearest whole number, as we can't  have a fraction of rabbits. 