%Shay Sackett ENGR 156 Matlab
%Problem 12.21, plots

%Part A: 

syms x %define symbolic variable x

y = exp(x); %create symbolic expression

fplot(y,[0,10]) %create symbolic plot
title('Symbolic Plot of e^x') %create title
xlabel('X') %create x label
ylabel('Y') %create y label
grid on %turn grid on

%% Part B: 

clear, clc, clf %clear workspace,figure, and command window
syms x %define symbolic variable x

y = sin(x); %create symbolic expression

fplot(y,[0,10]) %create symbolic plot
title('Symbolic Plot of Sin(x)') %create title
xlabel('X') %create x label
ylabel('Y') %create y label
grid on %turn grid on

%% Part C:  

clear, clc, clf %clear workspace,figure, and command window
syms x a b c %define symbolic variable x

y = a*x^2 + b*x +c; %create symbolic expression
y = subs(y,{a,b,c},{5,2,4}) %substitute values into symbolic equation

fplot(y,[0,10]) %create symbolic plot
title('Symbolic Plot of Quadratic Equation with Substitued Values') %create title
xlabel('X') %create x label
ylabel('Y') %create y label
grid on %turn grid on

%% Part D: 

clear, clc, clf %clear workspace,figure, and command window
syms x %define symbolic variable x

y = x^(1/2); %create symbolic expression

fplot(y,[0,10]) %create symbolic plot
title('Symbolic Plot of Rad X') %create title
xlabel('X') %create x label
ylabel('Y') %create y label
grid on %turn grid on