%Problem 5.27

t = 0:20; theta = pi/4; velocity_initial = 100; % time vector

vertical_pos = t.*velocity_initial.*sin(theta) - .5.*9.8.*t.^2; % Vertical Position Formula
velocity = velocity_initial*sin(theta) - 9.8.*t; % Velocity in the vertical direction formula

plot(t, vertical_pos)
xlabel('Time')
ylabel('Vertical Position')

yyaxis right
plot(t, velocity)
ylabel('Vertical Velocity')