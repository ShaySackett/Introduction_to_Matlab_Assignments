%problem 5.11 
%Part A: 
Tensile_Testing_Table; %Given table

Diameter = .505; %diameter of testing material
Cross_Area = pi*(Diameter/2)^2; %Cross sectional area of material
Force = Tensile_Testing_Table(:,1); %First column of tensile testing table is equal to force
Stress = Force./Cross_Area % Finds the stress of at the different forces

length = Tensile_Testing_Table(:,2); %Pull length values from measurement table 
length_naught = Tensile_Testing_Table(1,2); %Pull initial length value from table 
Strain = (length - length_naught) ./ length_naught % Calculate Strain, F/A

%% Part B, C, and D

plot(Strain, Stress, '-ok') %Plot Strain vs Stress
grid on
title('Graph of Strain vs Stress') %Add Title
xlabel('Strain')    %add x label
ylabel('Stress')    % add y label

text(.0053, 3.744e4,'<- Yield Point') % Add a textbox to label the yield point.  




