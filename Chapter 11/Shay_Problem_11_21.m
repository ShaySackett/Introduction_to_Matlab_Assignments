%Shay Sackett, ENGR 156 Matlab
%Problem 11.21, structure arrays 

clear, clc  %clear variables and command window
names = ["Aluminum", "Copper", "Iron", "Molybdenum", "Cobalt", "Vanadium"]; %add names from table  
symbols = ["Al", "Cu", "Fe", "Mo", "Co", "V"]; %add symbols from table
atomic_num = [12 29 26 42 27 23]; %add atomic nums from table
atomic_wt = [26.98 63.55 55.85 95.94 58.93 50.94]; %add atomic wt from table
density = [2.71 8.94 7.87 10.22 8.9 6.0]; %add density from table
crystal_structure = ["FCC", "FCC", "BCC", "BCC", "HCP", "BCC"]; %add crystal structure from table
previous_val = 0; %start previous value variable at 0


metal_structure.names = names; %create structure with field called names
metal_structure.symbols = symbols; %create structure with field called symbols
metal_structure.atomic_num = atomic_num; %create structure with field called atomic_num
metal_structure.atomic_wt = atomic_wt; %create structure with field called atomic_wt
metal_structure.density = density; %create structure with field called density
metal_structure.crystal_structure = crystal_structure; %create structure with field called crystal_structure

for i = 1:length(metal_structure.density) % for loop that compares values of density to find the largest density

current_val = metal_structure(1).density(i); %get the value for the current index position

if current_val > previous_val %compare the value of the current index position against the last one
    max_density_index = i; %record the index value of the current_density_index
end

previous_val = current_val; %make the current value the previous value for the next time around the loop
    

end


disp("The Element with the max density is ")  %Display message
disp(metal_structure(1).names(max_density_index))  %find the name associated with the largest density in the metal structure. 





