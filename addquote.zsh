#!/bin/zsh

cat >> quotes.raw
echo "%" >> quotes.raw
git add quotes.raw
git commit -am "[addquote] ${1:=new quote}"
git push
strfile quotes.u8
