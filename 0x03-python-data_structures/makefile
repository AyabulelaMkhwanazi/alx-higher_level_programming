PY = python3
SCRIPT = 
EXECUTABLE = 12-switch.py
MSG = "Tasks Complete"
FILE = 12-switch.py

.PHONY: all test chmod git clean

all: chmod test count

test:
	@echo
	@if [ "$(SCRIPT)" = "" ]; then \
		$(PY) $(FILE); \
	else \
		$(PY) $(SCRIPT); \
	fi

chmod:
	@echo
	chmod u+x $(EXECUTABLE)

git:
	@echo "Enter a new commit message: "; \
	read NEW_MSG; \
	git add .;\
	git commit -m "$$NEW_MSG"; \
	git push

clean:
	rm -f *.pyc

count:
	@echo
	wc -l $(FILE)
	@echo

