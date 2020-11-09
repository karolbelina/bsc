type Grammar    = [Production]
type Production = (String, Expression)
data Expression = Alternative { first :: Expression
                              , second :: Expression
                              , rest :: [Expression]
                              }
                | Sequence { first :: Expression
                           , second :: Expression
                           , rest :: [Expression]
                           }
                | Optional Expression
                | Repeated Expression
                | Factor { count :: Integer
                         , primary :: Expression
                         }
                | Exception { subject :: Expression
                            , restriction :: Expression
                            }
                | Nonterminal String
                | Terminal String
                | Special String
                | Empty