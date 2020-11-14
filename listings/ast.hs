data Expression
  = Alternative Expression Expression [Expression]
  | Sequence Expression Expression [Expression]
  | Optional Expression
  | Repeated Expression
  | Factor Integer Expression
  | Exception Expression Expression
  | Nonterminal String
  | Terminal String
  | Special String
  | Empty