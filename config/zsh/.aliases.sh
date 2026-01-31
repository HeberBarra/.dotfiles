alias q=" exit || exit"
alias ls=" ls -A --color=always --group-directories-first"
alias clear=" reset"
alias echo=" echo"
alias vi="nvim"

if command -v bat >/dev/null 2>&1; then
  alias cat=" bat"
fi

if command -v lsd >/dev/null 2>&1; then
  alias ls=" lsd -A"
  alias tree=" lsd --tree"
fi

if command -v fastfetch >/dev/null 2>&1; then
  alias fasffetch=" fastfetch"
fi

