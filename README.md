satysfi-callbacks
=================

[![Build Status](https://github.com/amutake/satysfi-callbacks/workflows/build/badge.svg)](https://github.com/amutake/satysfi-callbacks/actions?query=workflow%3Abuild)

A simple callback library for SATySFi. This project is under development, so the interface may break in frequently.

Example
-------

```
$ cat test.saty
@import: ./callbacks
@require: standalone

let c = Callbacks.make () in
let () = Callbacks.register display-message c in
let () = Callbacks.run `foo` c in
let () = Callbacks.register display-message c in
let () = Callbacks.run `bar` c in

standalone '<>
$ docker run --rm -it -v $(pwd):/satysfi amutake/satysfi:nightly satysfi test.saty
...
foo
bar
bar
...
```

For more complex example, see [example](./example) directory.
