% Autor:
% Fecha: 9/03/2020

%personajes
enemigo(nave_enemiga).
jugador(nave).
%ataque
dispara(nave).
dispara(nave_enemiga).
impacto(bala,nave).
impacto(bala,nave_enemiga).
da�o(vidas,nave_enemiga).
da�o(vidas,nave).
%puntos
puntos(tiempo).
vidas(nave).
regenera(puntos,vida).
%movimiento
direccion(nave).
velocidad(nivel, nave).
velocidad_disparo(nivel, nave).
%final
termina(tiempo, juego).
termina(vidas,juego).

da�a(X,Y):-
impacto(X,Y).

muere(X):-.