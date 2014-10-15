#!/bin/sh


adjective=$(head -$((${RANDOM} % `wc -l < adjectives.txt` + 1)) adjectives.txt | tail -1)
color=$(head -$((${RANDOM} % `wc -l < colors.txt` + 1)) colors.txt | tail -1)
noun=$(head -$((${RANDOM} % `wc -l < nouns.txt` + 1)) nouns.txt | tail -1)

code="$adjective $color $noun"

echo $(echo $code | tr 'a-z' 'A-Z')
