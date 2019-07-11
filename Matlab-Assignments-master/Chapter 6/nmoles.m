function moles = nmoles(m,MW)

[new_m, new_MW] = meshgrid(m, MW);

moles = new_m./new_MW;


