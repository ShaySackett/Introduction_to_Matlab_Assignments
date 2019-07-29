%Shay Sackett, ENGR 156 Matlab
%Problem 11.24, table arrays 
                                                                                                 % import table
names = ["Aluminum", "Copper", "Iron", "Molybdenum", "Cobalt", "Vanadium", "Lithium", "Germanium", "Gold"]; %add names from table  
symbols = ["Al", "Cu", "Fe", "Mo", "Co", "V", "Li", "Ge", "Au"];                                            %add symbols from table
atomic_num =   [12 29 26 42 27 23 3 32 79];                                                                   %add atomic nums from table
atomic_wt = [26.98 63.55 55.85 95.94 58.93 50.94 6.94 72.59 196.97];                                        %add atomic wt from table
density = [2.71 8.94 7.87 10.22 8.9 6.0 .534 5.32 19.32];                                                   %add density from table
crystal_structure = ["FCC", "FCC", "BCC", "BCC", "HCP", "BCC", "BCC", "Diamond Cubic", "FCC"];              %add crystal structure from table

symbols  = char(symbols);                                 %change symbols to char as specified by the problem
atomic_num = int8(atomic_num);                            %change atomic_num to char as specified by the problem
crystal_structure = categorical(crystal_structure);       %change crystal_structure to char as specified by the problem 

%Part A: 

index_BCC = find(crystal_structure == "BCC"); %Find the index positions of where the crystal structure is BCC
BCC_elements = names(index_BCC);  %Find the corresponding index position of the BCC element

fprintf("%.10s has a BCC structure  \n", BCC_elements) %print out which elements have a BCC format in a nice fashion
 



%% Part B: 

plot(atomic_num, atomic_wt, '.k')  %Plot atomic # vs atomic weight



