%Shay Sackett MATLAB ENGR 156
%Problem 8.2 asks us various questions about a rocket

t = 0:2:100;
height = 2.13.*t.^2 - 0.0013.*t.^4 + .000034.*t.^4.751;
plot(t,height)
axis([0,100,0,1500])

impact_height = find(height >= 0)



