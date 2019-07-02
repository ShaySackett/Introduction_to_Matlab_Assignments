% Problem 5.31

% Part A: 

x = -5:.5:5;  % X vector
y = -5:.5:5;  % Y vector

[X , Y] = meshgrid(x,y); % Map the x and y vectors into a 2d grid

Z = sin(sqrt(X.^2 + Y.^2)); % Define Z

mesh(Z) % Make a mesh grid of the Z values

%% Part B

surf(Z) %Make a surface plot of Z

% surf(X,Y,Z) , this gets the same result as above 

%% Part C

surf(Z) %Make surface plot of Z

shading interp % use interpolation shading for the colors

colormap('colorcube') %Use a different colormap for the coloring of the graph

%% Part D

colormap('cool') %change colormap back to something usable
contour(Z) %make a contour plot

h = contour(Z); % define contour "handle"/object

clabel(h) %label the contour lines 

%% Part E


