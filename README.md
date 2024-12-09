# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .nanorc
This is my custom .nanorc configuration for Nano.
## .bashrc
This is my custom .bashrc configuration for Bash.

The linux.sh script replaces the .nanorc file in the home directory with the ext/nanorc file of this repository, and sources the etc/bashrc_custom file in the .bashrc file in the home directory

The cleanup.sh script reverses the changes done by the linux.sh script; that is to say, it removes the .nanorc file in the home directory, and removes the lines from .bashrc which source the bashrc_custom file.
