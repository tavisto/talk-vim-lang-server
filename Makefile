.PHONY: build open clean

build :
	 pandoc  --metadata pagetitle="Language Servers in vim" -s -t revealjs -o index.html index.md
open :
	open index.html
clean :
	rm index.html
