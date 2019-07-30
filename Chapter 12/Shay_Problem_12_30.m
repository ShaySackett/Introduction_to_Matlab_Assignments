%Shay Sackett ENGR 156 Matlab
%Problem 12.30, Integrations

%Part A: 

syms x %define symbolic variables

y = x^2 + x; %define symbolic expression

disp('Indefinite integral is:')  %display message
y = int(y); %find indefinite integral using int() function
disp(y) %display final answer neatly

%% Part B: 

syms x %define symbolic variables

y = x^2 + x; %define symbolic expression

disp('Definite integral is:')  %display message
y = int(y,.3,1.3); %find indefinite integral using int() function
disp(y) %display final answer neatly

%% Part C: 

syms x y %define symbolic variables

a = x^2 + y^2; %define symbolic expression

disp('Indefinite integral is:')  %display message
a = int(a,x); %find indefinite integral using int() function, with respect to x
disp(a) %display final answer neatly

%% Part D: 

syms a b c x %define symbolic variables

z = a*x^2 + b*x + c; %define symbolic expression

disp('Definite integral is:')  %display message
z = int(z,x,3.5,24); %find indefinite integral using int() function, with respect to x
disp(z) %display final answer neatly





