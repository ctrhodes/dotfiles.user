#!/bin/bash

# assumes miniconda has already been installed
conda activate base
mamba create -n anaconda anaconda-navigator

# OSX, add following to user's /Applications/ folder:
if [[ $OSTYPE == darwin* ]]; then
    ln -sf ~/miniconda3/envs/anaconda/Anaconda-Navigator.app /Applications/
fi
