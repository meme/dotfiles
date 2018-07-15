# Set neovim as default editor
set EDITOR "nvim"

# Add ~/bin to path
set -gx PATH $HOME/bin $PATH

# Set GOPATH
set -gx GOPATH $HOME/go

alias "v = nvim"
alias "gg = gdb -q"
