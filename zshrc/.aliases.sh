alias ls=' ls -A --color=always --group-directories-first'
alias sass='sass --no-source-map'
alias sass_wh='sass --watch'
alias python='python3.14'
alias exit=' exit || exit'
alias :q=exit
alias clear=' reset'
alias echo=' echo'

if command -v bat >/dev/null 2>&1; then
  alias cat=' bat'
fi

if command -v lsd >/dev/null 2>&1; then
  alias ls=' lsd -A'
  alias tree=' lsd --tree'
fi

if command -v fastfetch >/dev/null 2>&1; then
  alias fastfetch=' fastfetch'
  alias neofetch=' fastfetch'
fi
