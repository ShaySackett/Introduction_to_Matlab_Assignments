% Problem 4.7
% Find area of a bunch of triangles
base = 0:10; height = 2:6; % define constants

[new_base, new_height] = meshgrid(base, height); % Use meshgrid to make sure matrices are of same dimension

Area_of_triangles = .5.*new_base.*new_height % Use formula for area of a triangle to find all of the possible triange areas