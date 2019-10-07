.PHONY: build open clean

build :
	 pandoc  --metadata pagetitle="Using Language Servers with vim" -s -t revealjs -o index.html index.md
open :
	open index.html
clean :
	rm index.html
