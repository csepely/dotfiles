#
# ~/.bashrc
#

[[ -f ~/.debug_shell ]] && echo ".bashrc: init"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.debug_shell ]] && echo ".bashrc: other settings"
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
# load bash conf's
for i in ~/bash.conf/enabled/*.conf;
do
        . $i
done
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
