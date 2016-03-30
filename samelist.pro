/* PROG member, se o num ta na lista */
domains
  lista = symbol*

predicates
  nondeterm a2b(lista, lista)
  
clauses
  a2b([],[]).
  a2b([a|Ta],[b|Tb]) :- a2b(Ta,Tb).
  
Goal: a2b([a,a,a], X).