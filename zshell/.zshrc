fastfetch
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# 1. Editor and Local Binaries
export PATH="$HOME/.local/share/nvim-macos-arm64/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# 2. Package Managers (Homebrew for Python/Node.js)
eval "$(/opt/homebrew/bin/brew shellenv)"

# 3. Official Go .pkg Binary Path (Tells the system where the 'go' command is)
export PATH="/usr/local/go/bin:$PATH"

# 4. Go Binary Tool Path (Safe to run now that 'go' is recognized above)
export PATH="$PATH:$(go env GOPATH)/bin"

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

