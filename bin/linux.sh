#!/bin/bash

# Check if the operating system type is not Linux
if [ "$(uname)" != "Linux" ]; then  

    # If not, append an error message to 'linuxsetup.log'
    echo "Error: Operating system is not Linux." >> linuxsetup.log  
    
    exit 1  
fi

mkdir -p "$HOME/.TRASH" # create the trash directory if it does not exist

if [ -f "$HOME/.nanorc" ]; then # check if the .nanorc file exists
    mv "$HOME/.nanorc" "$HOME/.bup nanorc" # if it does, rename it to .bup nanorc

    echo "The '.nanorc' file was renamed to '.bup nanorc'." >> linuxsetup.log # send the message to the setup log
fi

cat etc/nanorc > "$HOME/.nanorc" # put /etc/nanorc's contents into $HOME/.nanorc using the overwrite operator

# Append the line 'source ~/.dotfiles/etc/bashrc_custom' to the end of the .bashrc file
echo "source ~/.dotfiles/etc/bashrc_custom" >> "$HOME/.bashrc"

