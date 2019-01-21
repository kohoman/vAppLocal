#!/bin/bash

# --- Script to reset setup steps for MACe ---

# ... symbolic links ...

cd $HOME
rm -f .bashrc
rm -f .bash_profile
rm -f .emacs

# ... directories ...

rm -rf bin
rm -rf texmf
rm -rf python
rm -rf Desktop/References
rm -rf Documents/mweLaTeX
rm -rf Documents/mwePython
rm -rf Documents/mstTheses
rm -rf .unison
