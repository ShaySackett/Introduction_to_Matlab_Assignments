%problem 6.6

%This program finds distance to horizon on mars and earth in miles from 0
%to 10,000 feet

height = [0:10000];

height = height./5280; %conversion factor for feet into miles

diameter = [7926 4217] % Diameter of Earth and Mars respectively

radius = diameter./2; %radius of Earth and Mars

horizon_distance = distance(radius, height) %horizon distance represented as a table for both Earth and Mars. 