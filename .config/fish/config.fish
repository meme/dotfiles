set EDITOR "nvim"

alias "gg = gdb -q"
alias "pbcopy = xsel --clipboard --input"
alias "pbpaste = xsel --clipboard --output"

set -gx FZF_DEFAULT_OPTS "--height=25% --inline-info"
set -gx FZF_DEFAULT_COMMAND "ag -l --nocolor --hidden"

function ida
    /opt/idapro-7.3/ida $argv > /dev/null 2>&1 & disown
end

function ida64
   /opt/idapro-7.3/ida64 $argv > /dev/null 2>&1 & disown
end

function bn
    binaryninja $argv > /dev/null 2>&1 & disown
end

function e
  if [ (count $argv) -gt 0 ]
    env TERM=xterm $EDITOR $argv
  else
    env TERM=xterm $EDITOR (fzf)
  end
end

set -gx PATH $HOME/bin $PATH

set -gx GOPATH $HOME/go

set -gx GPG_TTY (tty)
