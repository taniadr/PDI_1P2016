/* PROG07.PRO – Predicado que concatena listas */
domains
  lista = integer*

predicates
  nondeterm ap (lista, lista, lista)
  nondeterm escreve (lista)

clauses
  ap ([ ],L,L).
  ap ([A|B1], B2, [A|B3]) :- ap (B1, B2, B3).
  escreve ([ ]).
  escreve ([X|Y]) :- write (X), nl, escreve (Y).
  
goal: ap([3,4,2], [6,7], LISTA).