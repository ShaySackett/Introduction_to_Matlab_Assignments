%Problem 4.11
% Create a 6x6 Magic Matrix and Answer Some Questions about it. 
% Part A:

magic_matrix = magic(6); % Create a 6x6 magic matrix

sum_of_rows = sum(magic_matrix') % sum for each of the rows of the magic matrix

%% Part B
% What is the sum of each of the columns of the magic matrix?

sum_of_columns = sum(magic_matrix) %use sum function to find sum of each column of the magic matrix

%% Part C
%What is the sum of each of the diagonals of the magic matrix?

sum_of_left_to_right_diagonal = sum(diag(magic_matrix)) %finds the sum of the left-to-right diagonal of the magic matrix
sum_of_right_to_left_diagonal = sum(diag(fliplr(magic_matrix))) % finds the sum of the right to left diagonal of the magic matrix

