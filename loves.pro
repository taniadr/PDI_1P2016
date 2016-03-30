%http://www.learnprolognow.org/lpnpage.php?pagetype=html&pageid=lpn-htmlse1

domains
  person = symbol

predicates
  nondeterm loves(person, person)
  nondeterm jealous(person, person)
  nondeterm footmassage(person, person)
  nondeterm kills(person, person)

clauses 
  loves(vincent,mia). 
  loves(marsellus,mia). 
  loves(pumpkin,honey_bunny). 
  loves(honey_bunny,pumpkin).
  loves(mia, honey_bunny).
  jealous(X,Y) :- loves(X,Z), loves(Y,Z), X >< Y.
  footmassage(mia, pumpkin).
  kills(marsellus, S) :- footmassage(mia, S).
%in this way it shows 2 the same result

goal loves (mia, X).