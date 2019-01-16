#!/bin/bash

# --- Setup script for the MGLe vApp ---

# ... add symbolic links to dot files ...

ln -s ~/vAppLocal/dots/dot.bashrc ~/.bashrc
ln -s ~/vAppLocal/dots/dot.bash_profile ~/.bash_profile
ln -s ~/vAppLocal/dots/dot.emacs ~/.emacs

# ... set up Desktop/References folder ...

mkdir ~/Desktop/References
cp -R references/AMS-LaTeX ~/Desktop/References/
cp -R references/bash      ~/Desktop/References/
cp -R references/Emacs     ~/Desktop/References/
cp -R references/git       ~/Desktop/References/
cp -R references/LaTeX     ~/Desktop/References/
cp -R references/Xfig      ~/Desktop/References/

# ... set up unison sync profile ...

mkdir ~/.unison
ln -s ~/vAppLocal/unison/MGLe.prf ~/.unison/

# ... set up Documents ...

cd ~/Documents/
git clone https://github.com/kohoman/minwes.git
git clone https://github.com/kohoman/mst_ths.git

# ... set up user texmf ...

cd
mkdir ~/texmf
mkdir ~/texmf/bibtex
mkdir ~/texmf/bibtex/bst
mkdir ~/texmf/tex
mkdir ~/texmf/tex/latex
ln -s ~/Documents/mst_ths/source_bst/mstogs.bst ~/texmf/bibtex/bst/
ln -s ~/Documents/mst_ths/source_class/mstogs.cls ~/texmf/tex/latex/

# ... set up user bin directory ...

mkdir ~/bin

exit

