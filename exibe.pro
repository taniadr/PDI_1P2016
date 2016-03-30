/* PROG08.PRO – Predicado que apaga elementos de uma lista */
domains
  lista = integer*

predicates
  nondeterm exibe(lista)

clauses
  exibe([]) :- nl.
  exibe([X|Y]) :- write(X), nl, exibe(Y).

Goal: exibe([1,3,5,6,7]).
