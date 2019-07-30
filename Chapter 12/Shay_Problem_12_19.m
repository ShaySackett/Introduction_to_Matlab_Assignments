%Shay Sackett ENGR 156 Matlab
%Problem 12.19, separation process

%Part A and B setup the equations using symbolic math in matlab

syms x m_tops m_bottoms %define symbolic variables

water = 50 == .2*m_tops + .65*m_bottoms;  %symbolic equation for water
ethanol = 0 == -100*x +.35*m_tops +.25*m_bottoms; %symbolic equation for ethanol
methanol = 50 == 100*x + .45*m_tops + .1*m_bottoms; %symbolic equation for methanol

%Part C solve the symbolic equations

[X,TOPS,BOTTOMS] = solve(water,ethanol,methanol);  %solve the system of 3 equations and 3 unknowns

disp('x = ')  %display message
disp(X)   %display result for x
disp('m tops = ')  %display message
disp(TOPS)  %display result for m tops
disp('m bottom = ')  %display message
disp(BOTTOMS)  %display result for m bottom