%Shay Sackett ENGR 156 Matlab
%Problem 13.11, polynomial

%Part A:
clear,clc,clf
P = [50000 200000 450000 800000 1250000]; %Power in terms of watts
I = [100 200 300 400 500];                %Current in Amps

coefficents = polyfit(P,P./((I).^2),2) %Find the coefficents for the line of best fit using polyfit

resistor_value = coefficents(3)

%% Part B: 
%Curve fitting is not included in Matlab R2018, only in R2019, so I
%improvised a bit with the problem, made my own "curve fit"
I_2 = [100:500] %create new matrix of I values
plot(I,P,'--r',I_2,resistor_value.*I_2.^2,'r')  %plot current vs Power , and plot the "curve fit"
grid on %turn grid on

