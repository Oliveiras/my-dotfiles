#!/bin/bash
set -eu

# Check if symlink dir was created
if [ ! -L ~/.bash ]; then
	echo 'You must create a symlink at "~/.bash"' >&1
	exit 1
fi

# Create other symlinks
ln -s ~/.bash/bashrc ~/.bashrc
ln -s ~/.bash/inputrc ~/.inputrc

echo 'Configured!'

