#!/bin/zsh

git pull >&2
strfile quotes.u8 >&2
strfile quotes >&2
fortune "$@" quotes.u8
