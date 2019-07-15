shear = [7.807 15.613 23.42 31.226 39.033 46.839 54.646 62.452]
strain = [11.140 21.518 34.907 46.200 60.415 73.92 83.617 97.793]

top = length(strain).*sum(shear.*strain) - sum(shear).*sum(strain);
bottom = length(strain).*sum(strain.^2) - (sum(strain)).^2;

a1 = top./bottom
a0 = mean(shear) - a1.*mean(strain)
y = a0 + 

plot (strain, shear)
grid on
title('Shear Stress vs. Strain')
xlabel('Strain, 1/s')
ylabel('Shear Stress, N/m^2')