import unicode

const noNextState* = -1

type FSM* = object
  states*: seq[int]
  initialState*: int
  acceptingStates*: seq[int]
  nextState*: proc(currentState: int, input: unicode.Rune): int{.closure.}

iterator runeIter(r: seq[unicode.Rune]): unicode.Rune =
  var i = 0
  while i < r.len:
    yield r[i]
    inc(i)

proc intInSlice(a: int, list: openArray[int]): bool =
  for i in list:
    if i == a:
      return true

  return false

proc run*(f: FSM, input: string): (bool, string) =
  var currentState = f.initialState
  var matched = ""
  var runes = input.toRunes()

  for i in runeIter(runes):
    let nextState = f.nextState(currentState, i)

    if nextState == noNextState:
      break

    matched.add($i)

    currentState = nextState
  
  return (intInSlice(currentState, f.acceptingStates), matched)


