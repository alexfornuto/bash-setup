#!/bin/bash
# A simple script to let you unrar all archives in a set of subdirectories into your current directory.

echo "dirs?"
read dirs

echo "name?"
read name

for d in $dirs; do ( cd $d && unrar x $name ../ ); done
