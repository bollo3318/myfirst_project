#/usr/bin/env bash

all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# myfirst_project" > README.md
	echo $$(date) >> README.md
	echo "  \n" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
