#!/bin/bash

rm ~/.tmux.conf
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf
cargo install tmux-sessionizer
tms config -p ~/projects
