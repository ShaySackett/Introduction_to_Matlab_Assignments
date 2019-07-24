% Shay Sackett Engineering 156 MATLAB 
% Problem 10.14, Determinants

A = [2 -1; 2 5]; %Enter vector A
B = [4 2; 2 1]; %Enter vector B
C = [2 0 0;
    1 2 2;
    5 -4 0]; %Enter vector C 

if det(A) > 0  %if A has a determinant
    disp('Inverse exists, inverse of A is:') %Display this message
    disp(inv(A))  % calculate and display inverse of A 
else
    disp('Determinant of A does not exist, therefore inverse does not exist either') %if determinant of A does not exist, display this message
end
    
    if det(B) > 0 %if B has a determinant
    disp('Inverse exists, inverse of B is:') %Display this message
    disp(inv(B)) % calculate and display inverse of B
else
    disp('Determinant of B does not exist, therefore inverse does not exist either') %if determinant of B does not exist, display this message
    end
    
    if det(C) > 0 %if C has a determinant
    disp('Inverse exists, inverse of C is:') %Display this message
    disp(inv(C)) % calculate and display inverse of C
else
    disp('Determinant of C does not exist, therefore inverse does not exist either') %if determinant of C does not exist, display this message
    end
    
    
    
    
