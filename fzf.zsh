# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/jaredaidenwolf/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/Users/jaredaidenwolf/.fzf/bin"
fi

source <(fzf --zsh)
