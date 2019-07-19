%Shay Sackett MATLAB ENGR 156
%Problem 9.6 create and plot a fibonacci sequence defined y the user

a = input('Enter the first number of the fibonacci sequence \n'); %Ask user for first input
b = input('Enter the second number of the fibonacci sequence \n'); %Ask user for second input
c = input('How many total numbers would you like in the fibonacci sequence? \n');  %Ask user for total # of elements in the sequence

i = 0;  %initialize index #
seq = [a, b];   %Store the first two values in the sequence
d = 0;  %initialize d

for i = 3:c       %for loop, for index starting at position 3, to c amount
    d = a + b;   %find the next value in the fibonacci sequence 
    seq(i) = d;  %add the next value of the sequence to the total sequence vector
    a = b;       %set up b for the next sequence
    b = d;       %set up d for the next sequence
end


theta = 1:c;          %write theta to be a vector of indices with the same length as seq. 
polarplot(theta, seq) %make a polar coordinate plot of theta vs seq.