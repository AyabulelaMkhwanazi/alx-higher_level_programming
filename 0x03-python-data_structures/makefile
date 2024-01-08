PY = python3
SCRIPT = 8-main.py
MSG = "8. More returns!"
FILE = 8-multiple_returns.py

.PHONY: all test chmod git clean

all: chmod test count

test:
	@echo
	$(PY) $(SCRIPT)

chmod:
	@echo
	chmod u+x $(SCRIPT)

git:
	git add .
	git commit -m $(MSG)
	git push

clean:
	rm -f *.pyc

count:
	@echo
	wc -l $(FILE)
	@echo
