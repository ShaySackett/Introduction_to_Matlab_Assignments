%Shay Sackett MATLAB ENGR 156
%Problem 9.6 create and plot a fibonacci sequence defined y the user

a = input('Enter the first number of the fibonacci sequence \n');
b = input('Enter the second number of the fibonacci sequence \n');
c = input('How many numbers would you like in the fibonacci sequence? \n');

i = 0;
seq = 0;
d = 0;

for i = 1:length(c)
    d = a + b;
    seq(i) = d;
    a = b;
    b = d;
end


seq
%polarplot(i, seq)
