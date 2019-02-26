# n
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# MacPorts
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Documents ->
export PS1="\[\033[36m\]\W\[\033[m\] → "

# aliases

## navigation
alias ..="cd .."

## shortcuts
alias g="git"
alias mk="mkdir"
alias wo="pwd"

## dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
