if [[ "$(uname)" = "Darwin" ]]; then
else
  alias pbcopy='xsel --clipboard --input'
  alias pbpaste='xsel --clipboard --output'
fi

