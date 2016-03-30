domains
  n, m = integer
  
predicates
  nondeterm point(n,m)
  nondeterm line(symbol, symbol)
  nondeterm vertical(symbol)
  nondeterm horizontal(symbol)
  
clauses

  point(1,1).
  point(1,3).
  line(point(1,1), point(1,3)).
  vertical(line(point(A,_), point(C,_))):- A=C.
  horizontal(line(point(_, B), point(_,D))):- B=D.
  
  goal vertical(line(point(1,1), point(1,3))).