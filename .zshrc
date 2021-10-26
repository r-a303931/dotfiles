__zshrc_bench=1

for i in ~/.zshrc.d/*.zsh; do
	. "$i"
done; unset i
