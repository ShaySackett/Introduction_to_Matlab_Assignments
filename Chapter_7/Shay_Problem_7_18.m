%Shay Sackett MATLAB ENGR 156
%Problem 7.18, asks us to evaluate the cost effectiveness of hybrid
%vehicles versus regular vehicles. 

gas_cost = input('What is the cost of gas?'); % Prompt user to enter how much the cost of gas is

miles_driven = 0:100000; %Assuming we drive each car 100,000 miles

cost_to_own_Camry = 23070 + (miles_driven./25).*gas_cost; %cost to own standard Camry
cost_to_own_hybrid_Camry = 26790 + (miles_driven./43).*gas_cost; %cost to own hybrid Camry


plot(miles_driven, cost_to_own_Camry, miles_driven, cost_to_own_hybrid_Camry) %plot both sets of y values simultaneously
xlabel('Miles_Driven') % x axis label
ylabel('Standard Camry Cost') % Y axis label
yyaxis right  %switch editing to other y axis
ylabel('Hybrid Camry Cost') %label other y axis
 
[x,y] = ginput(1) %choose a single point on the graph, part C

a = sprintf('Break Even Point: %5.0f', x); %Part D, use sprintf to label textbox on the graph

gtext(a) %Use gtext to allow user to place text box, HAVE TO CLICK TWICE IN THE FIGURE WINDOW TO SEE EVERYTHING IN THE PROGRAM

