alias reload!='. ~/.zshrc'
alias dots="cd $DOTFILES && vim $DOTFILES"
alias cmm="cd ~/code/membership"
alias cmc="cd ~/code/membership_client"
alias cmi="cd ~/code/membership_integration"
alias cem="cd ~/code/embedlogin"

if [[ "$(uname -a)" =~ "Ubuntu" ]]; then
  alias ack="ack-grep"
fi
