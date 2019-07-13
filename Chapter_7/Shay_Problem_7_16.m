%Shay Sackett MATLAB ENGR 156
%Problem 7.16 asks us to plot the height of a rocket and use ginput to
%estimate various things

t = 0:30; % Initialize time vector
height = (-9.8./2)*t.^2 + 125.*t + 500; % Height Function

plot(t, height) % create a plot of time vs height
xlabel('time') %label the x axis
ylabel('height') %label the y axis
grid on %turn the grid on

[x,y] = ginput(2); % allow the user to select 2 points from the graph

disp('The points chosen are: ') %Send message to screen

disp(table(x,y)) %Use disp() to display table of chosen x and y points

%Using this graph to answer the question, the maximum height of the rocket
%is at about 1,289 meters and the time it hits the ground is about 30 seconds 