%Shay Sackett ENGR 156 Matlab
%Problem 13.9, resistance is futile

%Part A: 
clear, clc,clf
R = [10 15 25 40 65 100]; %resistance values
I = [11.11 8.04 6.03 2.77 1.97 1.51]; %Current values

plot(R,I,'o') %plot resistance vs current
title('Resistance vs. Current') %add title
xlabel('Resistance') %add x axis label
ylabel('Current') %add y axis label
grid on %turn grid on

%% Part B: 

%another plot

C = 1./R; %conductance

plot(C,I,'o') % plot 1/R vs I 
grid on %turn grid on
title('1/R vs I') %add title
xlabel('1/R') %add x axis label
ylabel('I') %add y axis label

%% Part C:

%use polyfit to calculate coefficents of line of regression

coefficients = polyfit(C,I,1)  %apply polyfit to find coefficients, slope of the line is the applied voltage

%v = coefficients(1); %find voltage 

%% Part D: 

%Use polyval to find current values base on resistors used

%current = polyval(polyfit(C,I,1), R)  % calculate current for each resistor value, polyfit give us our array of coefficents, R is the x axis

plot(1./[10:5:100],polyval(polyfit(C,I,1),1./[10:5:100]))
hold on 
plot(1./R,I,'or')

%% Part E: 

%find applied voltage using left division

applied_voltage = I\'R'  




