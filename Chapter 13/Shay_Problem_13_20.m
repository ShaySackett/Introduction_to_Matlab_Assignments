%Shay Sackett ENGR 156 Matlab
%Problem 13.20, differential equations

clear, clc,clf

%Part A: 

%solve analytically
t = 0:4;

dydt_1 = 1 - sin(t);  %solve for dydt, take derivative of equation to get cos(t)

%% Part B: 
%use ode45 to get a solution

dydt_2 = @(t,y) 1 - sin(t) %function handle

[new_t,new_y] = ode45(dydt_2,[0,4],1) %solving the differential equatin numerically using the ode45 function

%% Part C: 
%graph the solution using bothe the analytical and ode45 solution

plot(t,dydt_1) %plot the solution to the equation analytically
hold on %keep the graph on 
grid on %turn on the grid
ode45(dydt_2,[0,4],1) %plot the solution to the equation using the ode45 function
