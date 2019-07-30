%Shay Sackett ENGR 156 Matlab
%Problem 12.12, kinetic energy

m = 2000;  %Given mass
v = 60;  %Given velocity

Ke_mph = .5*2000*v^2;  %Calculate kinetic energy for first part of problem
disp('Kinetic energy in terms of lbs and mph:')  %display message
disp(Ke_mph)  %display result for kinetic energy

ke_btu = Ke_mph*.000085918;  %use conversion factor to convert kinetic energy from first part of problem to have units of Btu

disp('Kinetic energy in units of Btu:')  %display message
disp(ke_btu) %display results in terms of btu




