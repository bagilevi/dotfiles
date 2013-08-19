alias reload!='. ~/.zshrc'
alias dots="vim $DOTFILES"

if [[ "$(uname -a)" =~ "Ubuntu" ]]; then
  alias ack="ack-grep"
fi
