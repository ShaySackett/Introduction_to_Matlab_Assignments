shear = [7.807 15.613 23.42 31.226 39.033 46.839 54.646 62.452]; %matrix for shear values
strain = [11.140 21.518 34.907 46.200 60.415 73.92 83.617 97.793];%matrix for strain values

top = length(strain).*sum(shear.*strain) - sum(shear).*sum(strain); % I split up the top and bottom parts for formula to find a1
bottom = length(strain).*sum(strain.^2) - (sum(strain)).^2; 

a1 = top./bottom; %formula to find a1
a0 = mean(shear) - a1.*mean(strain); %formula to find a0
y = a0 + a1.*strain; %find the equation for the line of best fit

plot (strain, shear,'.k', strain, y) %plot strain vs shear points, with no lines connecting the individual points, then graph the line of best fit
grid on %turn the grid on
title('Shear Stress vs. Strain') %turn the title on
xlabel('Strain, 1/s') %label x axis
ylabel('Shear Stress, N/m^2') %label y axis




