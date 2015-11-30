#!/bin/zsh
cd "$(dirname "$(readlink -f "$0")")"

nano .quotes.tmp
fn="$(date +%s)-$(sha1sum .quotes.tmp | cut -d" " -f 1)"
fp="quotes/${fn}.u8"
mv .quotes.tmp $fp
git add $fp
git commit -am "[addquote] ${1:=$fn}"
git push
find quotes -name "*.u8" -exec cat {} \; -exec echo "%" \; > quotes.u8
strfile -io quotes.u8
echo
echo "Link: https://github.com/nonchip/quotes/blob/master/$fp"
[ -f add.post.hook ] && zsh add.post.hook "$fn"

