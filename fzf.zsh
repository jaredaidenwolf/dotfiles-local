# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/jaredaidenwolf/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/Users/jaredaidenwolf/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/jaredaidenwolf/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/jbranam/.fzf/shell/key-bindings.zsh"

source <(fzf --zsh)
