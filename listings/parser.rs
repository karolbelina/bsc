fn sequence(i: Tokens) -> IResult<Tokens, Spanned<Expression>, Spanned<Error>> {
  map(
    separated_list1(concatenation_symbol, term),
    |nodes| match nodes.len() {
      1 => nodes[0].clone(),
      _ => Expression::Sequence {
        first: Box::new(nodes[0].clone()),
        second: Box::new(nodes[1].clone()),
        rest: nodes[2..].to_vec(),
      }
      .spanning(Span::combine(&nodes[0].span, &nodes[nodes.len() - 1].span)),
    },
  )(i)
}