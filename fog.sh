X=$(grep -v "jog" ~/.zsh_history_ext | grep -a --color=never "${PWD}   " | cut -f1 -d"⋮" | sort | uniq -c | sort -r | fzf | sed 's/^ *//' | cut -d" " -f2-)

echo "$COMMAND⋮$(pwd)" >> ~/.zsh_history_ext
eval $COMMAND
