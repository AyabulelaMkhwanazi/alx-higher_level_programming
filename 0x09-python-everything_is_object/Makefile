#!/usr/bin/make -s -f
include update_pymakefile.mk

PY = python3
<<<<<<< HEAD
SCRIPT = 9-main.py
EXECUTABLE = 9-main.py
FILE = 9-rectangle.py
=======
SCRIPT = 
EXECUTABLE = 101-nqueens.py
FILE = 101-nqueens.py
>>>>>>> f6d000a1b1e65db5413f70e6245b7c32dfd60989

.PHONY: all test chmod git clean

all: chmod test count style

test:
	@if [ "$(SCRIPT)" = "" ]; then \
		printf "\rRunning $(FILE) ..."; \
		sleep 2; \
		printf "\r%$${COLUMNS}s\r"; \
		OUTPUT=$$($(PY) $(FILE)); \
		echo "$${OUTPUT}" | sed -e 's/^ */\t/g'; \
		EXECUTABLE=$(FILE); \
	else \
		printf "\rRunning $(SCRIPT) ..."; \
		sleep 2; \
		printf "\r%$${COLUMNS}s\r"; \
		OUTPUT=$$($(PY) $(SCRIPT)); \
		echo "$${OUTPUT}" | sed -e 's/^ */\t/g'; \
		EXECUTABLE=$(SCRIPT); \
	fi
	@echo
	@printf "\r$(EXECUTABLE) is the executable file"; \
	sleep 2; \
	printf "\r%$${COLUMNS}s\r";

chmod:
	@echo
	@chmod u+x $(EXECUTABLE)
	@printf "\r$(EXECUTABLE) made an executable"; \
	sleep 3; \
	printf "\r%$${COLUMNS}s\r";

git:
	@git add .
	@if [ -f .commit_msg ]; then \
		 git commit -m "$$(cat .commit_msg)"; \
		rm .commit_msg; \
	else \
		read -p "Enter commit message: " msg; \
		git commit -m "$$msg"; \
	fi
	git push

clean:
	rm -f *.pyc

count:
	@printf "\rLine count: \n";
	@OUTPUT=$$(wc -l $(FILE)); \
	echo $$OUTPUT; \
	sleep 3; \
	printf "\033[1A"; \
	printf "\r%$${COLUMNS}s\r"; \
	printf "\033[1A"; \
	printf "\r%$${COLUMNS}s\r";

style:
	@printf "\rChecking $(FILE) for style errors:\n"
	@sleep 1;
	@printf "\r%$${COLUMNS}s\r";
	@OUTPUT=$$(python3 -m pycodestyle $(FILE)); \
	if [ -n "$$OUTPUT" ]; then \
		echo $$OUTPUT; \
    else \
        echo "No errors"; \
		sleep 1; \
		printf "\033[1A"; \
		printf "\r%$${COLUMNS}s\r"; \
		printf "\033[1A"; \
		printf "\r%$${COLUMNS}s\r"; \
    fi
