alias reload!='. ~/.zshrc'
alias dots="gvim $DOTFILES"

if [[ "$(uname -a)" =~ "Ubuntu" ]]; then
  alias ack="ack-grep"
fi
