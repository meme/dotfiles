set EDITOR "joe"

set -gx PATH $HOME/bin $PATH

set -gx GOPATH $HOME/go

alias "gg = gdb -q"

function ida
    ~/.wine/drive_c/Program\ Files/IDA\ 7.0/ida.exe $argv > /dev/null 2>&1 & disown
end

function ida64
    ~/.wine/drive_c/Program\ Files/IDA\ 7.0/ida64.exe $argv > /dev/null 2>&1 & disown
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
