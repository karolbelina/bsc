data Token
  = Nonterminal String
  | Terminal String
  | Special String
  | Integer Integer
  | Concatenation
  | Definition
  | DefinitionSeparator
  | EndGroup
  | EndOption
  | EndRepeat
  | Exception
  | Repetition
  | StartGroup
  | StartOption
  | StartRepeat
  | Terminator