proc reverse(s: string): string =
  result = s

  let size = s.len
  for (i, c) in s.pairs():
    result[(size - i - 1)] = c

proc main() =
  let s = "Hello world"

  when defined(faster):
    discard reverse(s)

  for i in 1..200_000_000:
    let _ = s.reverse()


when isMainModule:
  main()
