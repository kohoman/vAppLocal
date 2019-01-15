#!/bin/bash

# ... set up Desktop/References folder ...

mkdir ~/Desktop/References
cp -R References/AMS-LaTeX ~/Desktop/References/
cp -R References/bash      ~/Desktop/References/
cp -R References/Emacs     ~/Desktop/References/
cp -R References/git       ~/Desktop/References/
cp -R References/LaTeX     ~/Desktop/References/
cp -R References/Xfig      ~/Desktop/References/

# ... set up Unison sync profile ...

mkdir ~/.unison
ln -s Unison/MGLe.prf ~/.unison/

# ... set up Documents ...

mkdir ~/Documents/minwes.github
mkdir ~/Documents/mst_ths.github

# ... set up user texmf ...

mkdir ~/texmf
mkdir ~/texmf/bibtex
mkdir ~/texmf/bibtex/bst
mkdir ~/texmf/tex
mkdir ~/texmf/tex/latex
ln -s ~/Documents/mst_ths.github/source_bst/mstogs.bst ~/texmf/bibtex/bst/
ln -s ~/Documents/mst_ths.github/source_class/mstogs.cls ~/texmf/tex/latex/

# ... set up user bin directory ...

mkdir ~/bin

exit

