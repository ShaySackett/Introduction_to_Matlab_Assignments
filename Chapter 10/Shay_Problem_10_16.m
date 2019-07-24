% Shay Sackett Engineering 156 MATLAB 
% Problem 10.16, Moment of a force

position_vector_in = [10, 5, 0]; % position vector in inches; x,y,z components
position_vector_ft = position_vector_in ./12 % position vector in ft

force_vector = [35*cos(55), 35*sin(55), 0]; % force vector; x,y,z components


disp(' The moment of force about the point where a bracket is attached to a wall:') %display message
disp(cross(position_vector_ft, force_vector)) %display answer, answer is found by finding the cross product

