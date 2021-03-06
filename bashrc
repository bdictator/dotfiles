# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions



#aliasssss
alias c='clear'
alias h='history'
alias ls='ls --color=auto'
alias ll='ls -hl'
alias la='ls -a'
alias l='ls -lh'
alias cp='cp -v -i'
alias mv='mv -v -i'
alias mc='make -f ~/bin/Makefile ctags'
alias ..='cd ..'
alias ...='cd ../..'
alias grep='grep --color=auto'
#ls output color
export LS_COLORS='di=00;36'

#cmd line prompt
export PS1='\e[32m[\u@\w]$ '

#path
export PATH="~/bin/:$PATH"

#default editor
export EDITOR=/usr/bin/vim

function cd()
{
    command cd ${1} && ls
}

bind 'set completion-ignore-case on'
