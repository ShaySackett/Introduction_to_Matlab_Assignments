%Problem 3.11 
% Problem asks us to make a table of values for displacement versus time of
% a spring

t = 0:10; A = 4; angular_freq = .6; % constant values

displacement = A*cos(angular_freq*t); %Plug values into formula for displacement of a spring

table = [t', displacement'] %creates a table of time versus spring displacement

