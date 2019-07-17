%Shay Sackett MATLAB ENGR 156
%Problem 8.2 asks us various questions about a rocket

t = 0:2:100; % Create vectors of time
height = 2.13.*t.^2 - 0.0013.*t.^4 + .000034.*t.^4.751; %Create height vector
%plot(t,height) %Create a visualization of the problem to help out
%axis([0,100,0,1500]) %scale axis

impact_height = find(height <= 0) %find the first negative index value of height

impact_time = t(impact_height(1,2)) %use the second index position of the impact_height variable to find at what time the rocket hits the ground. 



%% Part B: 
% Use max function to determine maximum height of the rocket and what time
i = 1; %initialize index variable

while height(i) < height(i + 1) % compare current height value against next height values
    i = i+1  % if current height value is less than the next value, current value is not the largest height value. Move index to the next position and start comparing again
end %break out of loop if we find the largest value

max_height = height(i) %display max height

time_max_height = t(i) %display max time 

%% Part C:
%Create a plot of rocket height vs time

plot(t,height) %Create a visualization of the problem to help out
axis([0,100,0,1500]) %scale axis to make visualization just of rocket launch going up and hitting the ground. 
grid on
xlabel('Time')
ylabel('Height')
title('Rocket Height vs. Time')




