export LC_ALL=en_CA.UTF-8

export PLATFORM=$(uname -s)
export EDITOR=vim

if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
elif [ "$PLATFORM" = Darwin ]; then
    alias ls='ls -G'
fi

# git completion
[ -e ~/dotfiles/git-completion.bash ] && source ~/dotfiles/git-completion.bash

# git-prompt
[ -e ~/dotfiles/git-prompt.sh ] && source ~/dotfiles/git-prompt.sh

if [ "$PLATFORM" = Linux ]; then
    PS1="\[\e[1;38m\]\u\[\e[1;34m\]@\[\e[1;31m\]\h\[\e[1;30m\]:"
    PS1="$PS1\[\e[0;38m\]\w\[\e[1;35m\]> \[\e[0m\]"
else
    PROMPT_COMMAND='printf "\[\e[38;5;59m\]%$(($COLUMNS - 4))s\r" "$(__git_ps1) ($(date +%m/%d\ %H:%M:%S))"'
    PS1="\[\e[38;5;110m\]\u\[\e[38;5;108m\]@\[\e[38;5;186m\]\h\[\e[38;5;95m\]:"
    PS1="$PS1\[\e[38;5;252m\]\w\[\e[38;5;168m\]> \[\e[0m\]"
fi

[ -e ~/dotfiles/bash_local/local_options.bash ] && source ~/dotfiles/bash_local/local_options.bash
