import fsm
import unicode

proc isDigit(r: Rune): bool =
  case $r:
    of "0":
      return true
    of "1":
      return true
    of "2":
      return true
    of "3":
      return true
    of "4":
      return true
    of "5":
      return true
    of "6":
      return true
    of "7":
      return true
    of "8":
      return true
    of "9":
      return true
    else:
      return false

  return false
proc testFSM() =
  var f: FSM = FSM(states: @[1,2], initialState: 1, acceptingStates: @[2], nextState: proc (currentState: int, input: unicode.Rune): int = 
    case currentState:
      of 1:
        if input.isAlpha or $input == "_":
          return 2
      of 2:
        if input.isAlpha or input.isDigit:
          return 2
      else: return fsm.noNextState)
  var (x, y) = f.run("id3nt")
  echo y
  assert x == true

when isMainModule:
  testFSM()


