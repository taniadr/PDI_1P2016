/*Arvore Genealógica. TaniaR, S.d: 13.03.16*/
/*Lista01 - IA, 1st/2016*/

domains
  p = symbol

predicates
  nondeterm homem(p)
  nondeterm genitor(p,p)
  nondeterm pai(p,p)
  nondeterm mulher(p)
  nondeterm mae(p,p)
  nondeterm avoo(p,p)
  nondeterm avo(p,p)
  nondeterm irmao(p,p)
  nondeterm irma(p,p)
  nondeterm tio(p,p)
  nondeterm tia(p,p)
  nondeterm primo(p,p)
  nondeterm prima(p,p)
 
clauses
  homem(luiz).
  homem(rafael).
  homem(fabiano).
  homem(lucas).
  homem(itajiba).
  homem(arlindo).
  mulher(raquel).
  mulher(edmeia).
  mulher(tania).
  mulher(anamaria).
  mulher(silvana).
  mulher(renata).
  mulher(aurora).
  genitor(edmeia,rafael).
  genitor(edmeia,tania).
  genitor(arlindo,luiz).
  genitor(aurora,luiz).
  genitor(luiz,rafael).
  genitor(luiz,tania).
  genitor(raquel,edmeia).
  genitor(raquel,fabiano).
  genitor(raquel,renata).
  genitor(itajiba,fabiano).
  genitor(itajiba,renata).
  genitor(itajiba,edmeia).
  genitor(silvana,lucas).
  genitor(silvana,anamaria).
  pai(X,Y):-homem(X),genitor(X,Y), X<>Y.
  mae(X,Y):-mulher(X),genitor(X,Y), X<>Y.
  avoo(X,Y):-pai(X,Z),pai(Z,Y), X<>Y.
  avo(X,Y):-mae(X,Z),mae(Z,Y), X<>Y.
  irmao(X,Y):-homem(X),genitor(Z,X),genitor(Z,Y),X<>Y.
  irma(X,Y):-mulher(X),genitor(Z,X),genitor(Z,Y),X<>Y.
  tio(X,Y):-homem(X),genitor(Z,Y),irmao(X,Z),X<>Y.
  tia(X,Y):-mulher(X),genitor(Z,Y),irma(X,Z),X<>Y.
  primo(X,Y):-homem(X),genitor(Z,Y),tio(Z,X);tia(Z,X),X<>Y.
  prima(X,Y):-mulher(X),genitor(Z,Y),tio(Z,X);tia(Z,X),X<>Y.
  
/*goal: irmao(_i,_i1). . */
/* goal: irma(_i2, _i3).  */
/* goal: irma(_m,_f). */
/* goal: pai(Filho,Pai).  */
/* goal: avoo(Neto,Avo).  */
 goal: avo(_n,_a). 
/* goal: tio(Tio,Sobrinho).   */
/* goal: tia(Tia,Sobrinho1).*/ /*goal: primo(_p,_p1). */ /* goal:prima(_p,_p1).  */