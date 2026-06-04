#### Issue: select stanza interacts with package specification

Tested with dune 3.23.1

When I replace dune's version from 3.22 to 3.23 I get a compilation error.
I don't know why.

```
Error: Dependency cycle between:
   %{read:../lt38.txt} at lib/dune:16
Had 1 error, waiting for filesystem changes...
```

The whole setup is kind of fragile. When I was using dune 3.22 adding `(name ...` and `(package ...)` was breaking everything.


### Wanted: select implementation based on ppxlib's version

I tried to implement conditional compilation based on version of ppxlib.
There is an approach with ppx_optcomp but I wanted to tried solely dune's `select` stanza.
[All the demos I discovered](https://github.com/ocaml/dune/blob/main/test/blackbox-tests/test-cases/select-field/select-validation.t) don't take into account library's version, only it's availability.


### An attempt

Alizter recommended to move file from parent directory to the current one but it still gives an error for dune 3.23.1

```
Error: Dependency cycle between:
   library "fake_lt38" in _build/default/lib
-> %{read:lt38.txt} at lib/dune:16
-> library "fake_lt38" in _build/default/lib
-> required by %{read:lt38.txt} at lib/dune:16
```