#/bin/bash

pandoc -o sample.tex -f markdown_github+footnotes+header_attributes-hard_line_breaks \
      --pdf-engine=lualatex --top-level-division=chapter --listings sample.md

python3 ./python/body.py < ./SUMMARY.md > body.tex

latexmk -pdflua book.tex
