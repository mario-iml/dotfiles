starship init fish | source

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# scripts
set PATH "$PATH":"$HOME/.local/scripts/"
set PATH "$PATH":"$HOME/.cargo/bin/"
bind \cf "tmux-sessionizer"

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# secrets
source ~/.secrets

# uv
fish_add_path "/Users/mario/.local/bin"

# opencode
fish_add_path /Users/mario/.opencode/bin
