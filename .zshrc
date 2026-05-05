
eval "$(starship init zsh)"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# ruby
export PATH="$HOME/.rubies/ruby-4.0.2/bin:$PATH"

# scripts
export PATH="$PATH:$HOME/.local/scripts/"
export PATH="$PATH:$HOME/.cargo/bin/"
export PATH="$PATH:$(go env GOPATH)/bin"
# Binds Ctrl+F to output the command and press enter
bindkey -s '^f' 'tmux-sessionizer\n' 

export ANDROID_HOME=$HOME/Library/Android/sdk # (Use your actual path here)
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin

#alias docker="podman"

# git config aliases
alias gc-uni="git config user.name 'mario.immel' && git config user.email 'inf3850@hs-worms.de'"
alias gc-work="git config user.name 'mario.immel' && git config user.email 'mario.immel@thinking-labs.ai'"
alias gc-gh="git config user.name 'mario-iml' && git config user.email 'mario@immel-eich.de'"
# jj config aliases
alias jjc-uni="jj config set --user user.name 'mario.immel' && jj config set --user user.email 'inf3850@hs-worms.de'"
alias jjc-work="jj config set --user user.name 'mario.immel' && jj config set --user user.email 'mario.immel@thinking-labs.ai'"
alias jjc-gh="jj config set --user user.name 'mario-iml' && jj config set --user user.email 'mario@immel-eich.de'"

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

# uv
export PATH="/Users/mario/.local/bin:$PATH"

# opencode
export PATH="/Users/mario/.opencode/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/mario/.lmstudio/bin"
# End of LM Studio CLI section

# Added by Antigravity
export PATH="/Users/mario/.antigravity/antigravity/bin:$PATH"

# pnpm
export PNPM_HOME="/home/mario/.local/share/pnpm"
if [[ ":$PATH:" != *":$PNPM_HOME:"* ]]; then
  export PATH="$PNPM_HOME:$PATH"
fi
# pnpm end

# Added by Antigravity
export PATH="/Users/mario/.antigravity/antigravity/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/mario/.lmstudio/bin"
# End of LM Studio CLI section

