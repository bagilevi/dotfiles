
alias reload!='. ~/.zshrc'
alias sqex=". ~/bin/squareenix"


alias cmm="sqex"

if [[ "$(uname -a)" =~ "Ubuntu" ]]; then
  alias ack="ack-grep"
fi
