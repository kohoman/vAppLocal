#!/bin/bash

# --- Setup Script for the MPCe vApp ---

# ... add symbolic links to dot files ...

ln -s ~/vAppLocal/dots/dot.bashrc       ~/.bashrc
ln -s ~/vAppLocal/dots/dot.bash_profile ~/.bash_profile
ln -s ~/vAppLocal/dots/dot.emacs        ~/.emacs

# ... set up Desktop/References folder ...

mkdir ~/Desktop/References
cp -R references/bash      ~/Desktop/References/
cp -R references/Emacs     ~/Desktop/References/
cp -R references/git       ~/Desktop/References/
cp -R references/LaTeX     ~/Desktop/References/
cp -R references/AMS-LaTeX ~/Desktop/References/
cp -R references/Xfig      ~/Desktop/References/
cp -R references/python    ~/Desktop/References/

# ... set up unison sync profile ...

mkdir ~/.unison
ln -s ~/vAppLocal/unison/MPCe.prf ~/.unison/

# ... set up Documents ...

cd ~/Documents/
git clone https://github.com/kohoman/mweLaTeX.git
git clone https://github.com/kohoman/mwePython.git

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

# ... set up local Python directory ...

mkdir ~/python

exit

