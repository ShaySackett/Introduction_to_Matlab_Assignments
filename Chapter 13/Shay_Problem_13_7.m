%Shay Sackett ENGR 156 Matlab
%Problem 13.7, plotting

volume = 1:6; %Volume values
pressure = [2494 1247 831 623 499 416]; %Pressure values
x_spacing = 1:.2:6 % points to plot the linear regression values at

result_deg_1 = polyfit(volume, pressure, 1); % curve fit the volume and pressure data using a degree 1 polynomial
eq_1 = result_deg_1(1).*x_spacing + result_deg_1(2); % create the equation of the line of best fit using the coefficents from the previous line of code


result_deg_2 = polyfit(volume, pressure, 2);                                        % curve fit the volume and pressure data using a degree 2 polynomial
eq_2 = result_deg_2(1)*x_spacing.^2 + result_deg_2(2).*x_spacing + result_deg_2(3); %create equation for the best curve fit using a second order polynomial using the coefficents from the previous step

result_deg_3 = polyfit(volume, pressure, 3);                                                                        % curve fit the volume and pressure data using a degree 3 polynomial
eq_3 = result_deg_3(1)*x_spacing.^3 + result_deg_3(2).*x_spacing.^2 + result_deg_3(3).*x_spacing + result_deg_3(4); %create equation for the best curve fit using a second order polynomial using the coefficents from the previous step

result_deg_4 = polyfit(volume, pressure, 4);                                                                                                         % curve fit the volume and pressure data using a degree 4 polynomial
eq_4 = result_deg_4(1)*x_spacing.^4 + result_deg_4(2).*x_spacing.^3 + result_deg_4(3).*x_spacing.^2  + result_deg_4(4).*x_spacing + result_deg_4(5); %create equation for the best curve fit using a second order polynomial using the coefficents from the previous step

plot(volume,pressure,'o',...
    x_spacing,eq_1,...
    x_spacing,eq_2,...
    x_spacing,eq_3,...
    x_spacing,eq_4)   %Plot all the curve fit lines in one graph

title('Using Polyfit to Curve Fit Volume vs. Pressure Data')
xlabel('Volume')
ylabel('Pressure')
grid on


%The fourth order polynomial equation does the best job of curve fitting
%the graph