#!/bin/bash

while inotifywait -e close_write slides.md
    do pandoc -t revealjs -s -o index.html slides.md --mathjax="MathJax-2.7.3/MathJax.js"
done
