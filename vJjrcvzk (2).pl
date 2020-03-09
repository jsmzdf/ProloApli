%piedra1,tijera2papel3
gana(1,2).
gana(3,1).
gana(2,3).

empate(2,2).
empate(1,1).
empate(3,3).

mano(1).
mano(2).
mano(3).

gana1(X,C):-mano(X),random(1,4,C),gana(X,C).
