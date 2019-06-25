%Problem 3.17
%Problem asks us to find the mean, median, mode, and standard deviation of
%a number of grades. 

Grades = [68 83 61 70 75 82 57 5 76 85 62 71 96 78 76 68 72 75 83 93]; % Given list of all grades

mean_of_grades = mean(Grades) %Find the average/mean of all the grades
median_of_grades = median(Grades) %Find the median of all the grades
mode_of_grades = mode(Grades) % Find the mode of all grades 
Standard_deviation_of_grades = std(Grades) % Calculates standard deviation of all grades

%I think the mean is the best representation of the grades here since it
%seems to land closest to most of the values in the array. The standard
%deviation is 18, which tells us the grades are spread out quite far from
%each other, so it would be unwise to just rely on the median. 

matrix_size = size(Grades) %output the size of the matrix

sort_grades_ascending = sort(Grades) %sort grades in ascending order
