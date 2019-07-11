%Problem 4.8
%Find height to which liquid rises in two different barometers at different
%pressures, in units of Kilo Pascals which is why there are thousands of
%answers

Pressure = 0:1e5; density = [13560 1000]; g = 9.81; %define constants

[new_pressure, new_density] = meshgrid(Pressure, density); %use meshgrid to make sure both pressure and density variables are of equal size and therefore allowing corresponding values to be divided by each other 

Barometer_heights = new_pressure./(new_density.*g) %Calculate the height of the barometer fluid with different barometers and at different heights 