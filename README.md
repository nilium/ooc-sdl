ooc-sdl
=======

ooc-sdl is a set of ooc bindings for the [SDL](http://www.libsdl.org) library.

To use this, make sure _1)_ you have SDL 1.2 and _2)_ you clone this into your `$OOC_LIBS` directory.  Once that's done, simply add

    use sdl
    import sdl

to your source code and you're good to go.  Most of the API has had case/formatting changes but the names are all the same, so you shouldn't have any issue using this if you've already got experience with SDL.

Credits
=======

* Amos Wenger (nddrylliog) — Cleaned up the generated code, made this work, wrote the compiler, etc.
* Friedrich Weber (fredreichbier) — generated the original code for the bindings using [babbisch](http://github.com/fredreichbier/babbisch).
* Noel Cower (Nilium) — Cleaned up generated code, wrote this README.