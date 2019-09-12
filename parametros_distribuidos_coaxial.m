a = 1.13*10^-3;
b = (4.8 + 1.13)*10^-3;
c = 5.8*10^7;%sigma cobre
d = 0;
u = 4*pi*10^-7;%constante
er = 2.26;
eo = 8.854*10^-12;%constante
f = 1*10^9;


 
% Indutancia
l = (u/(2*pi))*log(b/a)
 
% Capacitancia
c = (2*pi*(er*eo))/log(b/a)

% Resistencia
r = abs(l/c)


% Condutancia
g = (2*pi*d)/log(b/a)

% Gama
gama = sqrt((r + 1j*2*pi*f*l)*(g + 1j*2*pi*f*c))

% Zo
zo = sqrt((r + 1j*2*pi*f*l)/(g + 1j*2*pi*f*c))


%resistencia justada
r = real(zo)

% Alfa
alfa = real(gama)

% Beta
beta = imag(gama)
