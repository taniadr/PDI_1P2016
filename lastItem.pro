/* PROG LastItem.PRO – Predicado que checa se Item = ultimo de List */
domains
  lista = symbol*

predicates
  nondeterm conc (lista, lista, lista)
  nondeterm  last (symbol, lista)

clauses
  conc ([ ],L,L).
  conc ([A|B1], B2, [A|B3]) :- conc (B1, B2, B3).
  last (Item, List) :- conc(List, [_], L2), conc(L2, [Item], List).
  
goal: last(a, [c,b,a]).