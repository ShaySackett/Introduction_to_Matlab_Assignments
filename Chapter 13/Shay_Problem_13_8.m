%Shay Sackett ENGR 156 Matlab
%Problem 13.8, polyfit

n = 1; R = 8.314;                %initialize values
P = [2494 1247 831 623 499 416]; %Pressure values
V = 1:6;                         %Volume values
X = 1./V;

line_eq_coefficents = polyfit(X,P,1)  %Linear curve fitting, find coefficents of line

line_eq_coefficents(1)./(n*R)  %nrt = nrt --> 2493/8.314 = 300

%% Part B: 
%plot the equations 

slope_equation = line_eq_coefficents(1).*X + line_eq_coefficents(2); %find equation for slope of the line
plot(X, P, 'o', X,slope_equation)  %plot 1/v on x axis, pressure on y axis

%% Part C: 
%Repeat above part using linear regression through 0

coefficents = P/X  %Send equation for curve-fit equation/line through 0. P/X = X\'P' according to Matlab documentation, P/X worked better than X\'P'
eq_2 = coefficents.*X; %Get all the 'y' values for the plot

clf %clear figure
plot(X,P,'o', X, eq_2)  %The graph through 0 and the graph not through 0 are virtually indistinguishable, although if you uncomment the below plot and zoom in far enough one can see they are very slightly different


%plot(X,P,'o', X, eq_2, X, slope_equation)