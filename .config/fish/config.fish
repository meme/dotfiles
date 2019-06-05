set EDITOR "joe"

set -gx PATH $HOME/bin $PATH

set -gx GOPATH $HOME/go

alias "gg = gdb -q"

function e
  if [ (count $argv) -gt 0 ]
    env TERM=xterm $EDITOR $argv
  else
    env TERM=xterm $EDITOR (fzf)
  end
end
