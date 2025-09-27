#: aliases.bashrc
#: bash/aliases.bashrc


##################################################
#: think_twice {{{
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
#: }}}
##################################################
#: view {{{
if [ -x /usr/bin/dircolors ]; then
	[ -r "$HOME/config/dircolors" ] && eval $(dircolors -b $HOME/.config/dircolors) || eval $(dircolors -b)
	alias ls="ls -F --color=auto --group-directories-first"
fi
alias la="ls -A"
alias ll="ls -lh --time-style=long-iso"
alias lla="ls -lhA --time-style=long-iso"
# alias cat="cat -n"
alias grep="grep -n --color=auto"

alias tree="tree -L 1"
alias treea="tree -a -L"

alias df="df -h"
alias du="du -h -d 1"
alias dU="du -h -d 1 | sort -rh"
#: }}}
##################################################
#: git {{{
alias gs="git status"
alias gsh="git show"

alias gb="git branch"
alias gck="git checkout"
alias gcm="git checkout master"

alias ga="git add"
alias gc="git commit -m"
alias gac="git add . && git commit -m update"

alias gl="git log --graph --all --abbrev-commit"

alias gr="git remote"
alias gp="git push"
alias gpo="git push -u origin main"
#: }}}
##################################################

alias sti3="startx /usr/bin/i3"

##################################################
#: systemctl {{{
alias sysenable="systemctl enable"
alias sysstart="systemctl start"
alias sysstop="systemctl stop"
alias sysstatus="systemctl status"
#: }}}
##################################################



