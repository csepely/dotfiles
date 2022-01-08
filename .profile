[[ -f ~/.debug_shell ]] && echo ".profile: init"
export GEM_HOME="$(ruby-2.7 -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
