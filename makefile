all: README.md
README.md: guessinggame.sh
	touch README.md
	echo "The title of the project: \n" >> README.md
	echo "# My project \n" >> README.md
	echo "The date and time at which make was run:" >> README.md
	echo "`date`\n" >> README.md
	echo "The number of lines of code contained in guessinggame.sh: " >> README.md 
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
