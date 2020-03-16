
%Hechos 

% Tijeras gana a papel
% Papel gana a piedra
% Piedra gana a tijeras



gana(tijeras,papel).
gana(papel,piedra).
gana(piedra,tijeras).

%Tijeras pierde con piedra.
%Piedra pierde con papel
%Papel pierde con Tijeras


pierde(tijeras,piedra).
pierde(piedra,papel).
pierde(papel,tijeras).

%Empates que se presentan
%Tijeras empata con Tijeras
%Piedra empata con Piedra
%Papel empata con Papel

empate(tijeras,tijeras).
empate(piedra,píedra).
empate(papel,papel).



%Reglas

ganador(X,Y):- gana(X,Y).
perdedor(X,Y):- pierde(X,Y).
empatados(X,Y):- X==Y; empate(X,Y).
