starship init fish | source

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# scripts
set PATH "$PATH":"$HOME/.local/scripts/"
set PATH "$PATH":"$HOME/.cargo/bin/"
bind \cf "tmux-sessionizer"

#alias docker="podman"

# git config aliases
alias gc-uni "git config user.name 'mario.immel' && git config user.email 'inf3850@hs-worms.de'"
alias gc-work "git config user.name 'mario.immel' && git config user.email 'mario.immel@thinking-labs.ai'"
alias gc-gh "git config user.name 'mario-iml' && git config user.email 'mario@immel-eich.de'"

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# secrets
source ~/.secrets

# uv
fish_add_path "/Users/mario/.local/bin"

# opencode
fish_add_path /Users/mario/.opencode/bin

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/mario/.lmstudio/bin
# End of LM Studio CLI section

