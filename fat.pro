%EM c++:
% if (n == 0)
%    return 1;
% else 
%    fat(n)*fat(n-1);
% return n; //no lembro

domains
  n, x = integer

predicates
  fat(n, x)
  
clauses
  fat(0, 1):- !.
  fat (N, x):- ... fat(N-1, N)