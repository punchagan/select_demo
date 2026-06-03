#### Issue: select stanza interacts with package specification

When I uncomment package from dune-project

```
(package
 (name test_select))
```

I start getting compilation error:

```
Error: Trying to build _build/lt38.txt but build context lt38.txt doesn't
exist.
-> required by %{read:../lt38.txt} at lib/dune:16
```

### Wanted: select implementation based on ppxlib's version

I tried to implement conditional compilation based on version of ppxlib.
There is an approach with ppx_optcomp but I wanted to tried solely dune's `select` stanza.
[All the demos I discovered](https://github.com/ocaml/dune/blob/main/test/blackbox-tests/test-cases/select-field/select-validation.t) don't take into account library's version, only it's availability.
