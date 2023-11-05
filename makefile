# default target, when make executed without arguments
all: clean create venv run

create:
        python3 -m venv env

venv:
        source env/bin/activate && pip install -r requirements.txt

run: venv
        python3 test.py

clean:
        if [ -d env ]; then rm -rf env; fi
