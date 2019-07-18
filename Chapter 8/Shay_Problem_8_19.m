%Shay Sackett MATLAB ENGR 156
%Problem 8.19 asks us to create some starts using polar coordinates


clear, clc
theta_start = pi/2;
turn_5 = (4*pi)/5;
turn_6 = (2*pi)/3;

points = menu('How many points would you like on your star?', '5 Points', '6 Points')

switch points
    case 1
       for i = 0:5
    theta(i+1) = theta_start + turn_5*i
end

r = ones(1,6)
polarplot(theta,r) 

    case 2
        for i = 0:3
             theta(i+1) = theta_start + turn_6*i
        end
        r = ones(1,4)
        polarplot(theta,r, 'b')
        hold on
        theta_start = (3*pi)/2
        i = 0;
        for i = 0:3
             theta(i+1) = theta_start + turn_6*i
        end
        polarplot(theta,r,'b')
end




% The below is just practice/showing the long way of doing it
%start = pi/2
%theta = [start,start + turn, previous  + turn, etc  ]
%r = [1,1]
%polarplot(theta,r)


