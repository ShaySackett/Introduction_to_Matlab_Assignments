%Shay Sackett ENGR 156 Matlab
%Problem 12.12, kinetic energy

syms m v; %define symbolic variables

ke_mph = .5*m*v^2; %define expression for kinetic energy in units of lb and mph
ke_mph = subs(ke_mph,{m,v}, {2000,60}); %sub in values for mass and velocity into symbolic equation
disp('Kinetic energy in terms of lbs and mph:')  %display message
ke_mph = double(ke_mph);  %convert symbolic variable to double 
disp(ke_mph)  %display answer



ke_btu = ke_mph*.000085918;  %use conversion factor to convert kinetic energy from first part of problem to have units of Btu
disp('Kinetic energy in units of Btu:')  %display message
ke_btu = double(ke_btu); %convert symbolic variable to double 
disp(ke_btu) %display answer





