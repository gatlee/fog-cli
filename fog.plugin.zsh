#!/usr/bin/env zsh

function zshaddhistory() {
	echo "${1%%$'\n'}⋮${PWD}   " >> ~/.zsh_history_ext
}

function fog() {

    COMMAND=$(grep -v "jog" ~/.zsh_history_ext | grep -a --color=never "${PWD}   " |
                  cut -f1 -d"⋮" |
                  sed 's/^[ ]*//;s/[ ]*$//' | # Trim whitespace
                  sort |
                  uniq -c |
                  sort -r |
                  fzf |
                  sed 's/^ *//' |
                  cut -d" " -f2-)

    echo "$X⋮$(pwd)" >> ~/.zsh_history_ext
    eval $X

}
