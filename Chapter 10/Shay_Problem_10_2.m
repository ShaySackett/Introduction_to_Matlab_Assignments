% Shay Sackett Engineering 156 MATLAB 
% Problem 10.2, Compute total mass using dot product

Density = [1.2 7.8 2.7]; %Density Vector
Volume = [700 200 300]; %Volume Vector

mass = dot(Density, Volume); %mass 

disp('The total mass is:') %display message
disp(mass)  %Display mass