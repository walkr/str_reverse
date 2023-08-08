# str_reverse

A testing repo for investigating why executing a string reverse operation outside
of the loop, then inside a loop, cuts it runtime in half.

```shell
time nim r -d:release src/str_reverse.nim

real  0m11.957s
user  0m11.777s
sys   0m0.049s
```

```shell
time nim r -d:release -d:faster src/str_reverse.nim

real  0m6.325s
user  0m6.145s
sys   0m0.050s
```

The `-d:faster` is our custom flag which will simply call the reverse function
outside of the loop, once prior to entering the loop.

```nim
# src/str_reverse.nim

proc main() =
  # ...
  when defined(faster):
    discard reverse(s)
  # ...

```
