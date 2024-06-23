#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
if [ $SCRIPT_DIR != "$HOME/.tmux" ]; then
    echo "This script should be run from the ~/.tmux directory."
    exit 1
fi

cd $SCRIPT_DIR

rm ~/.tmux.conf
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf

mkdir -p ~/.local/bin
ln -s ~/.tmux/tmux-sessionizer ~/.local/bin/tmux-sessionizer
