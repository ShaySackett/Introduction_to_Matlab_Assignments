%Problem 4.1
%problem asks us to make some matrices and use them in different parts of
%the problem.

a = [15 3 22; 3 8 5; 14 3 82;]; b = [1; 5; 6;]; c =[12 18 5 2]; % given matrices

% part a asks us to create a matrix d from third column of matrix a

d = a(:,3) %use colon operator to get 3rd column from a

%% Part B 
% Combine matrix b and matrix d

e = [b,d] % combine b and d

%% Part C
%Combine matrix b and matrix d to create matrix f

f = [b,d]; %  combine matrix b and d
f = f(:) % use colon operator to make one long matrix

%% Part D
%  create a matrix g from a matrix a and the first three elements of matrix
%  c. 

g = [a;c(1,1:3)] %operation combining matrices

%% Part E 
% create a matrix h with the first element equal to a1,3 the second element
% equal to c1,2 and the third element equal to b2,1

h = [a(1,3) c(1,2) b(2,1)]