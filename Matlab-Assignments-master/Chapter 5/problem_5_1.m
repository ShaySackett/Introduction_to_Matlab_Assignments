% Create plots of functions from x = 0 to 10
%Parts a,b,c, and d in one plot 
x = linspace(0,10,100); a = 5; b = 2; c = 4; %Define Constants

subplot(2,2,1)      % add subplot function, 4 subplots
y_1 = exp(x);       % solve for y values
plot(x,y_1)         %plot first graph
grid on           % turn grid on 
title('Graph of y = e^x')       %add title
xlabel('X-Axis')            %add x axis label
ylabel('Y-Axis')               %add y axis label


subplot(2,2,2)       %repeat above section of code for parts b,c, and d, for each of the different functions
y_2 = sin(x);
plot(x,y_2)
grid on
title('Graph of sin(x)')
xlabel('X-Axis')
ylabel('Y-Axis')


subplot(2,2,3)
y_3 = a*x.^2 + b*x + c;
plot(x,y_3);
grid on
title('Graph of quadratic equation')
xlabel('X-Axis')
ylabel('Y-Axis')


subplot(2,2,4)
y_4 = sqrt(x);
plot(x,y_4);
grid on
title('Graph of sqrt(x)')
xlabel('X-Axis')
ylabel('Y-Axis')

