#!/bin/zsh

git pull >&2
find quotes -name "*.u8" -exec cat {} \; -exec echo "%" \; > quotes.u8
strfile -io quotes.u8 >&2
fortune "$@" quotes.u8
