type tokenKind* = enum
  # ops
  tkPlus,
  tkMinus,
  tkStar,
  tkSlash,
  tkPlusEq,
  tkMinusEq,
  tkStarEq,
  tkSlashEq,
  tkPlusPlus,
  tkMinusMinus,
  tkGreater,
  tkLess,
  tkGreaterEq,
  tkLessEq,
  tkEq,
  tkEqEq,
  tkNotEq,
  tkBitOr,
  tkBitAnd,
  tkBitNot,
  tkRshift,
  tkLshift,
  tkLogNot,
  tkLogAnd,
  tkLogOr,
  tkDot,
  tkAt,

  # nonop chars
  tkArrow,
  tkFatArrow,
  tkLparen,
  tkRparen,
  tkLbrace,
  tkRbrace,
  tkComma,
  tkColonColon,

  # keywords
  tkLet,
  tkMut,
  tkClass,
  tkIfK,
  tkElseK,
  tkWhileK,
  tkForK,
  tkTypeK,
  tkFalse,
  tkTrue,

  # literals
  IntL
  FloatL
  Ident
  StringL
  Char

  # special
  EOF

type Token* = object
  kind*: tokenKind
  col: uint
  line: uint
  literal: string
