#!/bin/bash

# --- Script to reset setup steps for MGLe ---

# ... symbolic links ...

cd $HOME
rm -f .bashrc
rm -f .bash_profile
rm -f .emacs

# ... directories ...

rm -rf bin
rm -rf texmf
rm -rf Desktop/References
rm -rf .unison
