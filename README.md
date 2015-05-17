# nonchip's quote management system

## dependencies
  * zsh
  * dirname
  * readlink
  * cat
  * find
  * fortune-mod (including `fortune` and `strfile`)
  * git
  * sha1sum

## usage
### `addquote.zsh ["comment"]`
just pipe or enter (and terminate with `EOF`/`^D`) the quote, optionally specify a comment as the first (and only) command line argument
### `getquote.zsh [...]`
returns a quote (and some output on stderr, just `2>/dev/null` it if unwanted), optionally specify additional arguments to `fortune` on the command line

## forking
just fork the project and optionally `git rm quotes/*.u8`, if you don't want my quote collection.

## internals
the quotes are managed as one utf8 text file per quote (`quotes/*.u8`) and autoexported on the fly to an alpabetically sorted `fortune` database using `strfile` by the two scripts.
