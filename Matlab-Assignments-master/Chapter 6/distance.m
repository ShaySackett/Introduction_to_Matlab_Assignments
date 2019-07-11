function result = distance(radius, height)

[R,H] = meshgrid(radius, height); %function accepts 2 vector inputs so we need to use meshgrid

result = sqrt(2.*R.*H + H.^2); % result for distance to horizon 