#!/bin/zsh

git pull
strfile quotes.u8
strfile quotes
fortune quotes.u8 > README
git add README
git commit -m "readme update"
git push