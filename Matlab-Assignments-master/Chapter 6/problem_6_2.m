%Problem 6.2
% Part A was energy.m 

mass = logspace(0,6,100); %create an appropriately spaced mass vector using logspace

e = energy(mass);

semilogx(mass, e) %plot grain number using semilogx to get a graph that looks like an exponential curve

grid on

