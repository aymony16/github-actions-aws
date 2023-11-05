# default target, when make executed without arguments
all: venv
	clean create venv run  

create:
	python3 -m venv env
	
venv: 
	env\Scripts\activate
	pip install -r requirements.txt

run: venv
	test.py

clean:
	rmdir -R env /O 
