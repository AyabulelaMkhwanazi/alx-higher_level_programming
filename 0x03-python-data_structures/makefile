PY = python3
SCRIPT = 11-main.py
MSG = "Tasks Complete"
FILE = 11-delete_at.py

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
