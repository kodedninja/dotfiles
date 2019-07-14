# n
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# MacPorts
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Documents ->
export PS1="\[\033[36m\]\W\[\033[m\] → "

# deno
export PATH="/Users/hunor/.deno/bin:$PATH"

# aliases

## navigation
alias ..="cd .."

## shortcuts
alias g="git"
alias mk="mkdir"
alias wo="pwd"
alias npr="npm run"

## dotfiles from (https://medium.com/toutsbrasil/how-to-manage-your-dotfiles-with-git-f7aeed8adf8b)
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# python
alias python='python3'

# create repo on github and push master

github-create() {
 repo_name=$1

 dir_name=`basename $(pwd)`

 if [ "$repo_name" = "" ]; then
 echo "Repo name (hit enter to use '$dir_name')?"
 read repo_name
 fi

 if [ "$repo_name" = "" ]; then
 repo_name=$dir_name
 fi

 invalid_credentials=0

 username=`git config github.user`
 if [ "$username" = "" ]; then
 echo "Could not find username, run 'git config --global github.user <username>'"
 invalid_credentials=1
 fi

 token=`git config github.token`
 if [ "$token" = "" ]; then
 echo "Could not find token, run 'git config --global github.token <token>'"
 invalid_credentials=1
 fi

 if [ "$invalid_credentials" == "1" ]; then
  return 1
 fi

 echo -n "Creating Github repository '$repo_name' ..."
 curl -u "$username:$token" https://api.github.com/user/repos -d '{"name":"'$repo_name'"}' > /dev/null 2>&1
 echo " done."

 echo -n "Pushing local code to remote ..."
 git remote add origin https://github.com/$username/$repo_name.git > /dev/null 2>&1
 git push -u origin master
 echo " done."
}

export PATH="$HOME/.cargo/bin:$PATH"

export EDITOR="/usr/local/bin/micro"
