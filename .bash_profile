# n
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# MacPorts
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Documents ->
export PS1="\[\033[36m\]\W\[\033[m\] → "

# deno
export PATH="/Users/hunor/.deno/bin:$PATH"

# editor
export EDITOR="/usr/local/bin/kak"

# aliases

## navigation
alias ..="cd .."

## shortcuts
alias g="git"
alias mk="mkdir"
alias wo="pwd"
alias npr="npm run"
alias l="exa"
alias t="exa -T"
alias e="$EDITOR"

## dotfiles from (https://medium.com/toutsbrasil/how-to-manage-your-dotfiles-with-git-f7aeed8adf8b)
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# python
alias python='python3'

# calibre ebook-convert
alias 'ebook-convert'='/Applications/calibre.app/Contents/MacOS/ebook-convert'

export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/code/go/bin:$PATH"

# z
. ~/z/z.sh

export GOPATH="$HOME/code/go"

# ssh
alias groot='ssh groot.geogebra.org -p 22077'

# shut up macos
export BASH_SILENCE_DEPRECATION_WARNING=1
# remove multiprocessing limit
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
