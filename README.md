# Dotfiles

A general-purpose tmux configuration, bash aliases and git bash completion
and prompt.

# Instructions

Make sure to copy your existing .bash_profile to both a backup location
and ~/dotfiles/bash_local/local_options.bash before you replace it!

    git clone git://github.com/fawcettc/dotfiles.git ~/dotfiles
    mv ~/.bash_profile ~/dotfiles/bash_local/local_options.bash
    ln -s ~/dotfiles/bash_profile ~/.bash_profile
    ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
