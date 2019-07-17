% Ch.3 Hw problem 1, carpet problem
% part a, sum floor area to find area or carpet needed

floor_area = [934.14 947.75 929.38 932.61 938 941 945 930 943]; % floor area in ft^2 of the different rooms

total_area = sum(floor_area) % calculate the total amount of carpet needed to cover the floor


%% Part B 
% round the floor area up to make sure the needed area is covered

extra_carpet_factor = 1.10; % according to carpetcaptain.com we need to get about 10% extra carpet than what we have. There are 
% a lot of factors when sizing up carpet; avoiding seams, making sure the
% carpet runs in the same direction, one can only buy carpet in specific
% sized rolls etc. However to simply things anywhere from 2% to 20% of
% extra carpet is recommended depending on room size. Therefore 10% is a
% good average recommendation of extra carpet to buy. 

total_area = total_area*1.10; % multiply total carpet area by 1.10 to give us an extra 10% of carpet 

rounded_area = ceil(total_area) % round up the carpet needed to the nearest integer number. 