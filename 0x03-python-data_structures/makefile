PY = python3
SCRIPT = 7-main.py
MSG = "7. Tuples addition"

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
