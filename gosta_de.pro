domains
  nome, esporte = symbol
 
predicates
  nondeterm pessoa (nome)
  nondeterm modalidade (esporte)
  nondeterm gosta_de (nome, esporte)
  
clauses 
  pessoa (pedro).
  pessoa (luiza).
  pessoa (joao).
  pessoa (lais).
  pessoa (paulo).
  pessoa (elen).
  
  modalidade (natacao).
  modalidade (futebol).
  modalidade (volei).
  modalidade (tenis).
   
  gosta_de (pedro, natacao). 
  gosta_de (joao, futebol).
  gosta_de (elen, volei). 
  gosta_de (lais, volei).
  
% Loops are stated in the Goal. Only rules and their specifications are stated in clauses%   
goal gosta_de (X, volei), pessoa(X). % "," = AND % 