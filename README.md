# fog-cli
Improved jog cli with fzf integration

## Prerequisites
- fzf 
- zsh


## Installation Instructions

1. Add this to your `.zshrc`
```
function zshaddhistory() {
	echo "${1%%$'\n'}⋮${PWD}   " >> ~/.zsh_history_ext
}

alias fog=". fog.sh"
```

2. Download or copy the `fog.sh` script from this repo and place it in your `$PATH`
3. Restart terminal for changes to take effect
4. Use fog whenever you find yourself lost and confused
