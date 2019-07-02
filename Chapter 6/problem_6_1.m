%Problem 6.1 
%part A was creating num_grain.m, this is part b and c

n = 10:100; %ASTM grain size

N = num_grains(n) % number of grains from 10 to 100

plot(n,N)
grid on