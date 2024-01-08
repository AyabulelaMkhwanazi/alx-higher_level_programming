PY = python3
SCRIPT = 6-main.py
MSG = "6. Lists of lists = Matrix"

all: chmod test

test:
	$(PY) $(SCRIPT)

chmod:
	chmod u+x $(SCRIPT)

git:
	git add .
	git commit -m $(MSG)
	git push

clean:
	rm -f *.pyc
