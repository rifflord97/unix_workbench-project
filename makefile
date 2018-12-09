all: readme.md e_readme d_readme

readme.md: 
	echo "# Guessing Game" > README.md

e_readme: guessinggame.sh
	echo -e "\n"
	echo "Number of Lines of Code: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

d_readme: makefile
	echo -e "\n"
	echo "Date Run makefile" >> README.md
	stat -c '%y' makefile >> README.md

clean:
	rm README.md
