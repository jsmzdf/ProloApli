% Autor:
% Fecha: 9/03/2020
%personajes
enemigo('nave_enemiga').
jugador('nave_jugador').
%balas
bala('livianas').
bala('pesadas').
%ataque
dispara('bala').
impacta(jugador,enemigo).
impacta(enemigo,jugador).
%puntos
puntos('tiempo').
vidas(1)
vidas(2)
vidas(3)
regenera('vida').
%movimiento
direccion_nave('arriba').
direccion_nave('abajo').
direccion_nave('izquierda').
direccion_nave('derecha').
velocidad_nave('rapido').
velocidad_nave('normal').

%nivel
primernivel(1).
ultimonivel(3).
%puntuacion
puntacionminima(0).
puntuacionmaxima(0).
%Tiempo
tiempo_inicial(10000).
tiempo_final(0).
%final
%reglas


daño(X,Y):-dispara(A),impacta(X,Y).
daño(Y,X):- dispara(A),impacta(Y,X).
pierdevida(X):-daño(X,Y). 
muere(X):-vidas(1),pierdevida(X).
termina(X,Y):-tiempo(0).
finaljuego(Y):-muere(X,Y);termina(A,Y).
regenera:-vidas=<2,puntuacion==(2000).    
