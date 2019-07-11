%Shay Sackett MATLAB ENGR 156
%Problem 7.13, asks us to combine data in a single output with table()
%function

Last = {'Smith', 'Jones', 'Webb', 'Anderson'}; %Cell array using curly braces
First = {'Fred', 'Kathy', 'Milton', 'John'}; %Cell array using curly braces
Age = [6 22 92 45]; %Vector for age
Height = [47 66 62 72]; %Vector for height
Weight = [82 140 110 190]; %Vector for weight
Last = Last'; First = First'; Age = Age'; Height = Height'; Weight = Weight'; %Transpose age, weight, and height vectors to make them column vectors

disp(table(Last, First, Age, Height, Weight))  %Use the table function to combine different data types into a table, use disp to clean up output