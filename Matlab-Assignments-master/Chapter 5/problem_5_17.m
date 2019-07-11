%Problem 5.17

P_naught = 1000; r = .08; t = 1:30; %Define Constants


P = P_naught.*exp(r.*t) % Find the total amount of money earned at the end of 30 years with this formula 

%Part A, B, C, and D follow



subplot(2,2,1) % First quadrant
plot(t,P) % t vs p first quadrant using rectangular coordinates
grid on

subplot(2,2,2) %second quadrant
semilogx(t,P) % plot t vs p with the x axis scaled logarithmically
grid on

subplot(2,2,3) %third quadrant
semilogy(t,P) % plot t vs p with the y axis scaled logarithmically
grid on

subplot(2,2,4) %fourth quadrant
loglog(t,P) % plot t vs p with both x and y axis scaled logarithmically
grid on

