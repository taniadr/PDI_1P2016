/* PROG08.PRO – Predicado que apaga elementos de uma lista */
domains
  lista = integer*

predicates
  nondeterm apnd (lista, lista, lista)
  nondeterm apaga (integer, lista, lista)

clauses
  apnd ([ ],L,L).
  apnd ([H|B1], B2, [H|B3]) :- write("Tentando a 1"),nl, apnd (B1, B2, B3), write("tentando a 1.2"),nl.
  apaga (X, L1, L2) :- write("tentando a 2"), nl, apnd (H, [X|D], L1), /*roda apaga e em seguida apnd1 e repete enqto L!=[] e dps apdn2*/
  apnd (H, D, L2).

Goal: apaga(3,[1,3,5,2,3,4],LISTA).
/*Goal: apaga(1,[4,5,1,2,8],LISTA).*/
