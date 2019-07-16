speed = [198.968 167.552 157.080 146.608 136.136 115.192 94.248 73.304 62.832 41.888 31.416 15.708];
torque = [0 .06 .09 .1275 .1725 .225 .255 .315 .345 .375 .3975 .42]; %matrix for torque values
power = [0 10.053 14.137 183692 23.483 25.918 24.033 23.091 21.677 15.708 12.488 6.597];%matrix for power values

top_torque = length(speed).*sum(torque.*speed) - sum(torque).*sum(speed); % I split up the top and bottom parts for formula to find a1
bottom_torque = length(speed).*sum(speed.^2) - (sum(speed)).^2;

top_power = length(speed).*sum(power.*speed) - sum(power).*sum(speed); % I split up the top and bottom parts for formula to find a1
bottom_power = length(speed).*sum(speed.^2) - (sum(speed)).^2;

a1_torque = top_torque./bottom_torque; %formula to find a1
a0_torque = mean(torque) - a1_torque.*mean(speed); %formula to find a0
y_torque = a0_torque + a1_torque.*speed; %find the equation for the line of best fit

a1_power = top_power./bottom_power; %formula to find a1
a0_power = mean(power) - a1_power.*mean(speed); %formula to find a0
y_power = a0_power + a1_power.*speed; %find the equation for the line of best fit


plot (speed, torque,'.k',speed, y_torque) %plot speed vs torque points, with no lines connecting the individual points, then graph the line of best fit
grid on %turn the grid on
title('Speed vs. Torque') %turn the title on
xlabel('Speed, rad/sec') %label x axis
ylabel('Torque, N-m') %label y axis
