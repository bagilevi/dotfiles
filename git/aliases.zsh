# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if [[ -f $hub_path ]]
then
  alias git=$hub_path
fi

function git.branch {
  br=`git branch | grep "*"`
  echo ${br/* /}
}
alias branch="git.branch"

alias g=git

# The rest of my fun git aliases
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %Cgreen%ci%Creset %an: %s - %Creset %C(yellow)%d%Creset' --abbrev-commit "
alias glo="git log --pretty=format:'%Cred%h%Creset %Cgreen%ci%Creset %an: %s - %Creset %C(yellow)%d%Creset' --abbrev-commit  --no-merges"
alias gl="glog -n 10"
alias glom="glo master..stage"
alias glos="glo stage..dev"
alias glod="glo dev..HEAD"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gitd='git diff'
alias gitdc='git diff --cached'
alias gc='git commit'
alias gitc='git commit -m'
alias gca='git commit -a'
alias gitca='git commit -a -m'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gits='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gitss='git status -sb; gitdcspec'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias sqdev="x=`branch`; git co dev && git merge --squash $x"

alias gcm="git checkout master"
alias gcs="git checkout stage"
alias gcd="git checkout dev"
alias gcmp="git checkout master && git pull origin master"
alias gcsp="git checkout stage && git pull origin stage"
alias gcdp="git checkout dev && git pull origin dev"
alias gpull3="gcmp && gcsp && gcdp"
alias gpullm="gcmp && gcsp && git merge master && gcdp && git merge stage"

alias gpull="git pull origin \$(branch)"
alias gush="git push origin \$(branch)"
alias gimme="git pull --rebase origin \$(branch)"
alias givem="git push origin \$(branch)"
alias givemm="gimme && givem"
alias ga="git stash"
alias gaa="git stash apply"
alias gbr="git for-each-ref --sort=committerdate refs/heads/"
