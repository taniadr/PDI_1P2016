/* PROG member, se o num ta na lista */
domains
  lista = integer*

predicates
  nondeterm contem(integer, lista)
  
clauses
  contem(X,[X|_]).
  contem(X,[_|T]) :- contem(X,T).
  
Goal: contem(10,[7,3,5,4,7,8,1,0]).
