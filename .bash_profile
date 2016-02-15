# source
if [ -d ~/.bash_profile_includes ]; then
  for file in ~/.bash_profile_includes/{,*/}*.sh; do
    . $file
  done
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# load local before top level
export PATH="./bin:/usr/local/bin:$HOME/bin:$PATH"

# git PS1 setup
GIT_PS1_SHOWDIRTYSTATE=true

bash_completion_dir='/usr/local/Cellar/git/1.8.5.3/etc/bash_completion.d/'


. /usr/local/Cellar/git/1.8.5.3/etc/bash_completion.d/git-completion.bash
. /usr/local/Cellar/git/1.8.5.3/etc/bash_completion.d/git-prompt.sh

PS1='\[\033[32m\]\w\[\033[34m\]$(__git_ps1)\[\033[00m\] \$ '
