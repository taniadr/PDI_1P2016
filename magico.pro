domains
  nome = symbol

predicates
  nondeterm wizard(nome)
  nondeterm hasWand(nome)
  nondeterm quidditchPlayer(nome)
  nondeterm hasBroom(nome)
    
clauses
wizard(ron). 
wizard(X) :- hasBroom(X), hasWand(X). 
hasWand(harry). 
quidditchPlayer(harry). 
hasBroom(X):-  quidditchPlayer(X).
   
goal: wizard(Y).