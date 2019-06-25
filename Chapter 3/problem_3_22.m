% Problem 3.22
% Find the current I of a circuit... We should end up with a complex #
% I = V/Z, where v is voltage and z is impedance
V = complex(10, 0);
Impedance = [complex(0,5), complex(0,-15), complex(5,0)]; % impedance of Z_L, Z_C, Z_R respectively
Impedance_total = sum(Impedance); % Sum all the impedances

I = V/Impedance_total %Solve for current