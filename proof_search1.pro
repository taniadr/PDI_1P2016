domains
  n = symbol

predicates
  nondeterm f(n)
  nondeterm g(n)
  nondeterm h(n)    
  nondeterm k(n)
clauses
f(a).
f(b).
g(a).
g(b).
h(b).
k(X):-f(X), g(X), h(X).

goal: k(Y).