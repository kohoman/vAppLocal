#!/bin/bash

# --- Setup script for the MINe vApp ---

# ... add symbolic links to dot files ...

ln -s ~/vAppLocal/dots/dot.bashrc       ~/.bashrc
ln -s ~/vAppLocal/dots/dot.bash_profile ~/.bash_profile
ln -s ~/vAppLocal/dots/dot.emacs        ~/.emacs

# ... set up Desktop/References folder ...

mkdir ~/Desktop/References
cp -R references/bash      ~/Desktop/References/
cp -R references/Emacs     ~/Desktop/References/
cp -R references/git       ~/Desktop/References/

# ... set up unison sync profile ...

mkdir ~/.unison
ln -s ~/vAppLocal/unison/MINe.prf ~/.unison/

# ... set up Documents ...

cd ~/Documents/
git clone https://github.com/kohoman/mweLaTeX.git

# ... set up user texmf ...

cd
mkdir ~/texmf
mkdir ~/texmf/bibtex
mkdir ~/texmf/bibtex/bst
mkdir ~/texmf/bibtex/bib
mkdir ~/texmf/tex
mkdir ~/texmf/tex/latex

# ... set up user bin directory ...

mkdir ~/bin

exit

