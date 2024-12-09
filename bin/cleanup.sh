#!/bin/bash

rm -rf ~/.nanorc # remove the nanorc file

sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' "$HOME/.bashrc" # remove the line from the bashrc

rm -rf ~/.TRASH
