# fog-cli
[fzf](https://github.com/junegunn/fzf) + [Jog](https://github.com/natethinks/jog) = fog

## Prerequisites
- fzf `brew install fzf`
- zsh


## Installation Instructions

### [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) (Recommended)
1. Run these commands
``` sh
cd $ZSH_CUSTOM/plugins
git clone git@github.com:gatlee/fog-cli.git fog
```

2. Add fog to your plugins

``` sh
plugins=(
    fog
)
```

### Manual installation

1. Add this to your `.zshrc`
```
function zshaddhistory() {
	echo "${1%%$'\n'}⋮${PWD}   " >> ~/.zsh_history_ext
}

function fog() {

    COMMAND=$(grep -v "jog" ~/.zsh_history_ext | grep -a --color=never "${PWD}   " | cut -f1 -d"⋮" | sort | uniq -c | sort -r | fzf | sed 's/^ *//' | cut -d" " -f2-)

    echo "$X⋮$(pwd)" >> ~/.zsh_history_ext
    eval $X

}
```

2. Restart terminal for changes to take effect
3. Use fog whenever you find yourself lost and confused


