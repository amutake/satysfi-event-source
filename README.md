satysfi-event-source
=================

[![Build Status](https://github.com/amutake/satysfi-event-source/workflows/build/badge.svg)](https://github.com/amutake/satysfi-event-source/actions?query=workflow%3Abuild)

A simple synchronous event-source library for SATySFi. This project is under development, so the interface may change in frequently.

Example
-------

```
$ cat test.saty
@require: standalone
@import: ./event-source

let s  = EventSource.make () in                   % `make` creates new event-source.
let () = EventSource.listen display-message s in  % `listen` registers callback function as a listener.
let () = EventSource.dispatch `foo` s in          % `dispatch` calls all listeners' callback immediately.
let () = EventSource.listen display-message s in
let () = EventSource.dispatch `bar` s in

standalone '<>
$ docker run --rm -it -v $(pwd):/satysfi amutake/satysfi:nightly satysfi test.saty
...
foo
bar
bar
...
```

For more complex example, see [example](./example) directory.
